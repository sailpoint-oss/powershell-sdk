#!/usr/bin/env node
/**
 * build-versioned-sdk.js
 *
 * Builds one PowerShell SDK module per resource partition found in the apis/ directory.
 * New partitions are discovered automatically — no script updates required when
 * new endpoints are added.
 *
 * Pipeline for each partition:
 *   1. Copy apis/ to .sdk-build-tmp/  (git-ignored, so source files stay clean)
 *   2. Apply prescript YAML fixes to the temp copy
 *   3. Bundle the partition openapi.yaml with redocly (resolves shared/ $refs)
 *   4. Run openapi-generator-cli with a dynamically generated config
 *   5. Run postscript.js on the generated output
 *
 * After all partitions are built:
 *   6. Auto-generate PSSailpoint/PSSailpoint.psm1 barrel module
 *
 * On failure, structured error logs are written to build-errors/:
 *   build-errors/summary.md              — overview of all failures
 *   build-errors/<partition>-error.md    — self-contained per-partition report
 *                                          with error output + spec file contents
 *                                          (designed to be fed directly to an AI)
 *
 * Usage:
 *   node sdk-resources/build-versioned-sdk.js <path-to-apis-dir> [--partition <name>] [--keep-tmp]
 *
 * Options:
 *   --partition <name>   Build only the named partition (default: all)
 *   --keep-tmp           Do not delete .sdk-build-tmp after the build
 */

"use strict";

const fs     = require("fs");
const path   = require("path");
const crypto = require("crypto");
const { spawnSync } = require("child_process");

// ---------------------------------------------------------------------------
// Constants
// ---------------------------------------------------------------------------

const SDK_ROOT     = path.resolve(__dirname, "..");
const TEMP_DIR     = path.join(SDK_ROOT, ".sdk-build-tmp");
const BUNDLED_DIR  = path.join(TEMP_DIR, "bundled");
const ERROR_DIR    = path.join(SDK_ROOT, "build-errors");
const JAR          = path.join(SDK_ROOT, "openapi-generator-cli.jar");
const POSTSCRIPT   = path.join(__dirname, "postscript.js");
const TEMPLATE_DIR = path.join(__dirname, "resources");

const API_VERSION     = "v1";
const PACKAGE_VERSION = "2.0.11";
const COMMON_VERBS    = "Delete=Remove:Cancel=Suspend:Patch=Update:List=Get:Query=Search:Run=Start:Validate=Confirm:Make=Select";

// ---------------------------------------------------------------------------
// CLI args
// ---------------------------------------------------------------------------

const args = process.argv.slice(2);
if (args.length === 0 || args[0].startsWith("--")) {
  console.error("Usage: node sdk-resources/build-versioned-sdk.js <path-to-apis-dir> [--partition <name>] [--keep-tmp]");
  process.exit(1);
}

const apisDir       = path.resolve(args[0]);
const keepTmp       = args.includes("--keep-tmp");
const partitionIdx  = args.indexOf("--partition");
const onlyPartition = partitionIdx !== -1 ? args[partitionIdx + 1] : null;

// ---------------------------------------------------------------------------
// Utility: copy directory recursively
// ---------------------------------------------------------------------------

function copyDirSync(src, dest) {
  fs.mkdirSync(dest, { recursive: true });
  for (const entry of fs.readdirSync(src, { withFileTypes: true })) {
    const srcPath  = path.join(src, entry.name);
    const destPath = path.join(dest, entry.name);
    if (entry.isDirectory()) {
      copyDirSync(srcPath, destPath);
    } else {
      fs.copyFileSync(srcPath, destPath);
    }
  }
}

// ---------------------------------------------------------------------------
// Utility: walk directory, return all file paths
// ---------------------------------------------------------------------------

function walkSync(dir, files = []) {
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      walkSync(full, files);
    } else {
      files.push(full);
    }
  }
  return files;
}

// ---------------------------------------------------------------------------
// Utility: read a file safely (returns empty string if missing)
// ---------------------------------------------------------------------------

function readFileSafe(filePath) {
  try {
    return fs.readFileSync(filePath, "utf8");
  } catch {
    return "";
  }
}

// ---------------------------------------------------------------------------
// Prescript fixes (applied to the temp copy of apis/)
// Previously a standalone prescript.js; now runs against the temp copy so
// source files are never modified during a build.
// ---------------------------------------------------------------------------

function applyPrescriptFixes(tempApisDir) {
  const files = walkSync(tempApisDir);
  let fixed = 0;

  for (const file of files) {
    if (!file.endsWith(".yaml") && !file.endsWith(".yml")) continue;

    let content = fs.readFileSync(file, "utf8");
    let changed = false;

    if (file.includes(path.join("documents", "SearchDocument.yaml")) ||
        file.includes(path.join("documents", "SearchDocuments.yaml"))) {
      content = "type: object";
      changed = true;
    }

    if (changed) {
      fs.writeFileSync(file, content, "utf8");
      fixed++;
    }
  }

  console.log(`  prescript: fixed ${fixed} file(s) in temp copy`);
}

// ---------------------------------------------------------------------------
// Bundle a single partition's openapi.yaml with redocly
// ---------------------------------------------------------------------------

function bundlePartition(partitionName, tempApisDir) {
  const inputSpec  = path.join(tempApisDir, partitionName, "openapi.yaml");
  const outputSpec = path.join(BUNDLED_DIR, `${partitionName}.yaml`);

  fs.mkdirSync(BUNDLED_DIR, { recursive: true });

  const result = spawnSync(
    "npx",
    ["redocly", "bundle", inputSpec, "-o", outputSpec, "--force"],
    { encoding: "utf8" }
  );

  return {
    ok:         result.status === 0,
    stdout:     result.stdout || "",
    stderr:     result.stderr || "",
    outputSpec,
  };
}

// ---------------------------------------------------------------------------
// Convert a partition name (e.g. "access-profiles") to PascalCase ("AccessProfiles")
// ---------------------------------------------------------------------------

function toPascal(name) {
  return name
    .split(/[-_]/)
    .map(s => s.charAt(0).toUpperCase() + s.slice(1))
    .join("");
}

// ---------------------------------------------------------------------------
// Generate a deterministic GUID from a partition name (MD5-based)
// ---------------------------------------------------------------------------

function partitionGuid(partitionName) {
  const hash = crypto.createHash("md5").update(`pssailpoint-${partitionName}`).digest("hex");
  return [
    hash.slice(0,  8),
    hash.slice(8,  12),
    hash.slice(12, 16),
    hash.slice(16, 20),
    hash.slice(20, 32),
  ].join("-").toUpperCase();
}

// ---------------------------------------------------------------------------
// Generate per-partition config YAML
// ---------------------------------------------------------------------------

function writePartitionConfig(partitionName) {
  const pascal        = toPascal(partitionName);
  const packageName   = `PSSailpoint.${pascal}`;
  const subModuleName = pascal;
  const guid          = partitionGuid(partitionName);

  const configLines = [
    `templateDir: ${TEMPLATE_DIR.replace(/\\/g, "/")}`,
    `packageName: ${packageName}`,
    `packageVersion: ${PACKAGE_VERSION}`,
    `apiVersion: '${API_VERSION}'`,
    `companyName: SailPoint Technologies`,
    `packageGuid: ${guid}`,
    `commonVerbs: ${COMMON_VERBS}`,
    `discardReadOnly: true`,
    `subModuleName: ${subModuleName}`,
    `functionPrefix:`,
    `files:`,
    `  developerSite_code_examples.mustache:`,
    `    templateType: APIDocs`,
    `    destinationFilename: developerSite_code_examples.yaml`,
    `  docs_methods_index.mustache:`,
    `    templateType: SupportingFiles`,
    `    destinationFilename: docs/Methods/Index.md`,
    `  docs_models_index.mustache:`,
    `    templateType: SupportingFiles`,
    `    destinationFilename: Index.md`,
  ];

  const configPath = path.join(TEMP_DIR, `${partitionName}-config.yaml`);
  fs.writeFileSync(configPath, configLines.join("\n"), "utf8");
  return configPath;
}

// ---------------------------------------------------------------------------
// Run openapi-generator for a single partition (output captured)
// ---------------------------------------------------------------------------

function generatePartition(partitionName, bundledSpec, configPath) {
  const outputDir = path.join(SDK_ROOT, "PSSailpoint", partitionName);

  if (fs.existsSync(outputDir)) {
    fs.rmSync(outputDir, { recursive: true, force: true });
  }

  const result = spawnSync(
    "java",
    [
      "-jar", JAR,
      "generate",
      "-i", bundledSpec,
      "-g", "powershell",
      "-o", outputDir,
      "--global-property", "skipFormModel=false,apiDocs=true,modelDocs=true",
      "--config", configPath,
    ],
    { encoding: "utf8" }
  );

  return {
    ok:       result.status === 0,
    stdout:   result.stdout || "",
    stderr:   result.stderr || "",
    outputDir,
  };
}

// ---------------------------------------------------------------------------
// Run postscript.js on the generated output (output captured)
// ---------------------------------------------------------------------------

function runPostscript(outputDir) {
  const result = spawnSync(
    "node",
    [POSTSCRIPT, outputDir],
    { encoding: "utf8" }
  );

  return {
    ok:     result.status === 0,
    stdout: result.stdout || "",
    stderr: result.stderr || "",
  };
}

// ---------------------------------------------------------------------------
// Error logging
// ---------------------------------------------------------------------------

const MAX_FILE_BYTES = 20_000;

function collectSpecFiles(partitionName, tempApisDir) {
  const partDir = path.join(tempApisDir, partitionName);
  if (!fs.existsSync(partDir)) return {};

  const collected = {};
  const files = walkSync(partDir).filter(f => f.endsWith(".yaml"));

  for (const f of files) {
    const relPath = path.relative(path.join(tempApisDir, ".."), f);
    let content = readFileSafe(f);
    if (Buffer.byteLength(content, "utf8") > MAX_FILE_BYTES) {
      content = content.slice(0, MAX_FILE_BYTES) + "\n\n[... truncated — file exceeds 20 KB ...]";
    }
    collected[relPath] = content;
  }

  return collected;
}

function writeErrorReport(partitionName, step, errorOutput, tempDir, apisSourceDir) {
  fs.mkdirSync(ERROR_DIR, { recursive: true });

  const specFiles  = collectSpecFiles(partitionName, path.join(tempDir, "apis"));
  const sourceDir  = path.join(apisSourceDir, partitionName);
  const reportPath = path.join(ERROR_DIR, `${partitionName}-error.md`);

  const fileBlocks = Object.entries(specFiles)
    .map(([relPath, content]) => `### \`${relPath}\`\n\`\`\`yaml\n${content}\n\`\`\``)
    .join("\n\n");

  const report = `# SDK Build Error: \`${partitionName}\`

## Context for AI

This file is a self-contained error report for the \`${partitionName}\` API partition.
It contains the build error and all relevant OpenAPI spec files needed to diagnose and fix the problem.

**Source directory to fix:** \`${sourceDir}\`
**Failed step:** ${step}

---

## Error Output

\`\`\`
${errorOutput.trim()}
\`\`\`

---

## Fix Instructions

1. Read the error output above carefully.
2. Identify which spec file(s) below are causing the problem.
3. Apply fixes directly to the source files under \`${sourceDir}\`.
4. Do **not** edit files in \`.sdk-build-tmp/\` — those are generated copies.
5. After fixing, re-run the build for just this partition:
   \`\`\`bash
   node sdk-resources/build-versioned-sdk.js <path-to-apis> --partition ${partitionName}
   \`\`\`

---

## Spec Files

${fileBlocks || "_No spec files found._"}
`;

  fs.writeFileSync(reportPath, report, "utf8");
  return reportPath;
}

function writeSummaryReport(results, apisSourceDir) {
  fs.mkdirSync(ERROR_DIR, { recursive: true });

  const failureLines = results.failed.map(({ partition, step, reportPath }) =>
    `| \`${partition}\` | ${step} | [${path.basename(reportPath)}](./${path.basename(reportPath)}) |`
  ).join("\n");

  const summary = `# SDK Build Error Summary

**Date:** ${new Date().toISOString()}
**APIs directory:** \`${apisSourceDir}\`
**Total partitions:** ${results.total}
**Succeeded:** ${results.success.length}
**Failed:** ${results.failed.length}

## Failed Partitions

| Partition | Failed Step | Error Report |
|-----------|-------------|--------------|
${failureLines || "_(none)_"}

## How to Fix

Each error report in this directory is self-contained and can be given directly to an AI.
It includes the full error output and all relevant spec file contents.

Fix partitions one at a time:
\`\`\`bash
# Fix a single partition
node sdk-resources/build-versioned-sdk.js <path-to-apis> --partition <partition-name>

# Re-run all after fixes
node sdk-resources/build-versioned-sdk.js <path-to-apis>
\`\`\`
`;

  const summaryPath = path.join(ERROR_DIR, "summary.md");
  fs.writeFileSync(summaryPath, summary, "utf8");
  return summaryPath;
}

// ---------------------------------------------------------------------------
// Auto-generate PSSailpoint/PSSailpoint.psm1
//
// Each partition module is imported with Import-Module (global session scope)
// so all cmdlets are callable directly. A Get-SailPointCommand convenience
// function is added as the single-module equivalent of Get-Command -Module PSSailpoint.
// ---------------------------------------------------------------------------

function generateBarrelModule() {
  const psSailpointDir = path.join(SDK_ROOT, "PSSailpoint");

  if (!fs.existsSync(psSailpointDir)) {
    console.log("  PSSailpoint/ directory not found, skipping barrel module generation.");
    return;
  }

  // Partition dirs are identified by containing a src/ subdirectory (generated by openapi-generator).
  // This avoids relying on a version suffix in the dir name.
  const partitionDirs = fs.readdirSync(psSailpointDir, { withFileTypes: true })
    .filter(e => e.isDirectory() && fs.existsSync(path.join(psSailpointDir, e.name, "src")))
    .map(e => e.name)
    .sort();

  if (partitionDirs.length === 0) {
    console.log("  No partition modules found, skipping barrel module generation.");
    return;
  }

  const importLines = partitionDirs.flatMap(dir => {
    // Discover the actual module name from the src/ subdirectory rather than
    // deriving it, so modules with non-standard casing (e.g. PSSailpoint.NERM) work.
    const srcDir = path.join(psSailpointDir, dir, "src");
    const modDirs = fs.existsSync(srcDir)
      ? fs.readdirSync(srcDir, { withFileTypes: true }).filter(e => e.isDirectory()).map(e => e.name)
      : [];
    return modDirs.map(modName =>
      `Import-Module -Name (Join-Path $PSScriptRoot '${dir}' 'src' '${modName}') -Force -Global`
    );
  });

  const content = [
    "# Auto-generated by build-versioned-sdk.js — DO NOT EDIT",
    "# Each partition module is imported into the global session so all cmdlets are",
    "# available directly. Use Get-SailPointCommand for easy discovery.",
    "",
    "$ErrorActionPreference = 'Stop'",
    "",
    "$Script:CmdletBindingParameters = @('Verbose', 'Debug', 'ErrorAction', 'WarningAction', 'InformationAction', 'ErrorVariable', 'WarningVariable', 'InformationVariable', 'OutVariable', 'OutBuffer', 'PipelineVariable')",
    "",
    ". $PSScriptRoot/Configuration.ps1",
    ". $PSScriptRoot/Pagination.ps1",
    "",
    "function Get-SailPointCommand {",
    "    <#",
    "    .SYNOPSIS",
    "        Lists available SailPoint cmdlets across all loaded partition modules.",
    "    .DESCRIPTION",
    "        Equivalent to Get-Command -Module PSSailpoint.* but with an optional",
    "        name filter. Use this instead of Get-Command -Module PSSailpoint.",
    "    .PARAMETER Name",
    "        Optional wildcard filter for the command name. Defaults to '*'.",
    "    .EXAMPLE",
    "        # List all Get-* cmdlets with their synopsis",
    "        Get-SailPointCommand -Name 'Get-*' | Get-Help | Format-Table Name, Synopsis",
    "    .EXAMPLE",
    "        # Find transform-related cmdlets",
    "        Get-SailPointCommand -Name '*Transform*'",
    "    .EXAMPLE",
    "        # Get detailed help for a specific cmdlet",
    "        Get-SailPointCommand -Name 'Get-AccountsV1' | Get-Help -Detailed",
    "    #>",
    "    [CmdletBinding()]",
    "    param(",
    "        [Parameter(Position = 0)]",
    "        [string]$Name = '*'",
    "    )",
    "    Get-Command -Module (Get-Module 'PSSailpoint.*' | Select-Object -ExpandProperty Name) -Name $Name |",
    "        Sort-Object Name",
    "}",
    "",
    ...importLines,
    "",
  ].join("\n");

  const outPath = path.join(psSailpointDir, "PSSailpoint.psm1");
  fs.writeFileSync(outPath, content, "utf8");
  console.log(`  Wrote PSSailpoint/PSSailpoint.psm1 with ${partitionDirs.length} partition imports + Get-SailPointCommand`);
}

// ---------------------------------------------------------------------------
// Sync the main PSSailpoint module version to PACKAGE_VERSION.
//
// Unlike the partition modules (whose manifests are fully generated by
// openapi-generator from packageVersion), the main wrapper's Build.ps1 and
// PSSailpoint.psd1 are hand-maintained. To keep PACKAGE_VERSION as the single
// source of truth, we patch only their ModuleVersion line in place and leave
// the rest of each file untouched.
// ---------------------------------------------------------------------------

function syncMainModuleVersion() {
  const psSailpointDir = path.join(SDK_ROOT, "PSSailpoint");

  // (label, file path, regex matching the ModuleVersion assignment).
  // Build.ps1 pads with spaces ("ModuleVersion     = '...'"); the psd1 does not.
  const targets = [
    ["PSSailpoint/Build.ps1",        path.join(psSailpointDir, "Build.ps1"),         /(ModuleVersion\s*=\s*)'[^']*'/],
    ["PSSailpoint/PSSailpoint.psd1", path.join(psSailpointDir, "PSSailpoint.psd1"),  /(ModuleVersion\s*=\s*)'[^']*'/],
  ];

  for (const [label, filePath, re] of targets) {
    if (!fs.existsSync(filePath)) {
      console.log(`  ${label} not found, skipping version sync.`);
      continue;
    }
    const original = fs.readFileSync(filePath, "utf8");
    if (!re.test(original)) {
      console.log(`  WARNING: no ModuleVersion line found in ${label}, skipping.`);
      continue;
    }
    const updated = original.replace(re, `$1'${PACKAGE_VERSION}'`);
    if (updated !== original) {
      fs.writeFileSync(filePath, updated, "utf8");
      console.log(`  Set ${label} ModuleVersion → ${PACKAGE_VERSION}`);
    } else {
      console.log(`  ${label} ModuleVersion already ${PACKAGE_VERSION}`);
    }
  }
}

// ---------------------------------------------------------------------------
// Main
// ---------------------------------------------------------------------------

function main() {
  if (!fs.existsSync(apisDir)) {
    console.error(`Error: apis directory not found: ${apisDir}`);
    process.exit(1);
  }

  if (!fs.existsSync(JAR)) {
    console.error(`Error: openapi-generator-cli.jar not found at ${JAR}`);
    console.error("  Download it with:");
    console.error("  wget -q https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/7.12.0/openapi-generator-cli-7.12.0.jar -O openapi-generator-cli.jar");
    process.exit(1);
  }

  const allPartitions = fs.readdirSync(apisDir, { withFileTypes: true })
    .filter(e => e.isDirectory() && e.name !== "shared")
    .map(e => e.name)
    .sort();

  const partitions = onlyPartition
    ? allPartitions.filter(p => p === onlyPartition)
    : allPartitions;

  if (partitions.length === 0) {
    console.error(`No partitions found${onlyPartition ? ` matching '${onlyPartition}'` : ""} in ${apisDir}`);
    process.exit(1);
  }

  console.log(`\nFound ${partitions.length} partition(s) to build\n`);

  // Set up temp directory
  console.log(`[SETUP] Copying apis/ → ${path.relative(SDK_ROOT, TEMP_DIR)}/`);
  if (fs.existsSync(TEMP_DIR)) fs.rmSync(TEMP_DIR, { recursive: true, force: true });
  copyDirSync(apisDir, path.join(TEMP_DIR, "apis"));

  console.log("[SETUP] Applying prescript fixes to temp copy ...");
  applyPrescriptFixes(path.join(TEMP_DIR, "apis"));

  // Clear any previous error reports
  if (fs.existsSync(ERROR_DIR)) fs.rmSync(ERROR_DIR, { recursive: true, force: true });

  // Remove all stale PSSailpoint/* partition directories so renamed/removed APIs don't linger.
  // Partition directories are identified by having a src/ subdirectory (generated by openapi-generator).
  // Skipped when --partition is used (single-partition rebuild preserves sibling packages).
  //
  // PROTECTED_DIRS lists manually-maintained modules that must never be deleted by this script.
  const PROTECTED_DIRS = new Set(["nerm", "nermV2025"]);
  const psSailpointDir = path.join(SDK_ROOT, "PSSailpoint");
  if (!onlyPartition && fs.existsSync(psSailpointDir)) {
    console.log("[CLEAN] Removing stale PSSailpoint/* partition directories ...");
    const stale = fs.readdirSync(psSailpointDir, { withFileTypes: true })
      .filter(e => e.isDirectory()
        && !PROTECTED_DIRS.has(e.name)
        && fs.existsSync(path.join(psSailpointDir, e.name, "src")))
      .map(e => e.name);
    for (const d of stale) {
      fs.rmSync(path.join(psSailpointDir, d), { recursive: true, force: true });
      console.log(`  removed PSSailpoint/${d}/`);
    }
    console.log(`  cleaned ${stale.length} directory/directories\n`);
  }

  const results = {
    total:   partitions.length,
    success: [],
    failed:  [],
  };

  for (const partition of partitions) {
    console.log(`\n${"=".repeat(60)}`);
    console.log(`  Building: ${partition}`);
    console.log(`${"=".repeat(60)}`);

    // --- Step 1: Bundle ---
    console.log("  [1/4] Bundling spec ...");
    const bundle = bundlePartition(partition, path.join(TEMP_DIR, "apis"));
    if (!bundle.ok) {
      const errorOutput = [bundle.stdout, bundle.stderr].filter(Boolean).join("\n");
      console.error(`  ✗ bundling failed`);
      const reportPath = writeErrorReport(partition, "bundling", errorOutput, TEMP_DIR, apisDir);
      results.failed.push({ partition, step: "bundling", reportPath });
      continue;
    }

    // --- Step 2: Config ---
    console.log("  [2/4] Writing generator config ...");
    const configPath = writePartitionConfig(partition);

    // --- Step 3: Generate ---
    console.log("  [3/4] Generating PowerShell SDK ...");
    const gen = generatePartition(partition, bundle.outputSpec, configPath);
    if (!gen.ok) {
      const errorOutput = [gen.stdout, gen.stderr].filter(Boolean).join("\n");
      console.error(`  ✗ generation failed`);
      const reportPath = writeErrorReport(partition, "generation", errorOutput, TEMP_DIR, apisDir);
      results.failed.push({ partition, step: "generation", reportPath });
      continue;
    }

    // --- Step 4: Postscript ---
    console.log("  [4/4] Running postscript ...");
    const post = runPostscript(gen.outputDir);
    if (!post.ok) {
      const errorOutput = [post.stdout, post.stderr].filter(Boolean).join("\n");
      console.error(`  ✗ postscript failed`);
      const reportPath = writeErrorReport(partition, "postscript", errorOutput, TEMP_DIR, apisDir);
      results.failed.push({ partition, step: "postscript", reportPath });
      continue;
    }

    results.success.push(partition);
    console.log(`  ✓ ${partition} → PSSailpoint/${partition}/`);
  }

  // Cleanup
  if (!keepTmp) {
    console.log("\n[CLEANUP] Removing .sdk-build-tmp/ ...");
    fs.rmSync(TEMP_DIR, { recursive: true, force: true });
  }

  // Regenerate barrel module from all current partition_v{n} directories
  console.log("\n[BARREL] Regenerating PSSailpoint/PSSailpoint.psm1 ...");
  generateBarrelModule();

  // Keep the hand-maintained main module manifest in sync with PACKAGE_VERSION.
  console.log("\n[VERSION] Syncing main PSSailpoint module version ...");
  syncMainModuleVersion();

  // Write error reports
  if (results.failed.length > 0) {
    const summaryPath = writeSummaryReport(results, apisDir);
    console.log(`\n[ERRORS] ${results.failed.length} partition(s) failed.`);
    console.log(`  Summary:  ${path.relative(SDK_ROOT, summaryPath)}`);
    console.log(`  Reports:  ${path.relative(SDK_ROOT, ERROR_DIR)}/`);
    console.log(`\n  Failed partitions:`);
    for (const { partition, step, reportPath } of results.failed) {
      console.log(`    ✗ ${partition} (${step}) → ${path.relative(SDK_ROOT, reportPath)}`);
    }
  }

  // Summary
  console.log("\n" + "=".repeat(60));
  console.log("BUILD SUMMARY");
  console.log("=".repeat(60));
  console.log(`  Success: ${results.success.length} / ${results.total}`);
  console.log(`  Failed:  ${results.failed.length} / ${results.total}`);

  if (results.failed.length > 0) {
    process.exit(1);
  }
}

main();
