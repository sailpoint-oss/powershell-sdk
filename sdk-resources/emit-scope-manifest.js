#!/usr/bin/env node
/**
 * emit-scope-manifest.js
 *
 * Writes sailpoint-scopes.json, which ships inside the SDK package. The
 * SailPoint CLI (`sail scopes analyze`) reads it to map the SDK calls in a
 * project to the OAuth scopes that they need.
 *
 * This file is identical in every SDK repo. Each build-versioned-sdk.js
 * picks the naming function for its language.
 *
 * Format (schemaVersion 1):
 *   {
 *     "schemaVersion": 1, "sdk": "typescript", "sdkVersion": "2.2.38",
 *     "operations": {
 *       "<operationId>": {
 *         "resource": "<partition>", "tag": "<first tag>", "sdkName": "<method or cmdlet>",
 *         "httpMethod": "GET", "path": "/accounts/v1",
 *         "userAuth": [...] | null, "applicationAuth": [...] | null,
 *         "defaultScope": true?, "public": true?, "userLevels": [...]?
 *       }
 *     }
 *   }
 *
 * userAuth and applicationAuth list scopes of which any one is enough. null
 * means that the auth type cannot call the operation, and [] means that no
 * scope is needed. defaultScope marks operations without a security block,
 * which inherit the spec default (sp:scopes:all).
 */

const fs   = require("fs");
const path = require("path");

const SCHEMA_VERSION = 1;
const MANIFEST_NAME  = "sailpoint-scopes.json";
const HTTP_METHODS   = ["get", "put", "post", "delete", "options", "head", "patch", "trace"];

/**
 * Read every operation of a bundled partition spec (JSON).
 *
 * @param {string}   bundledSpecPath  redocly bundle output for the partition
 * @param {string}   partition        partition (resource) name
 * @param {Function} nameFor          (operationId, { httpMethod, path }) => SDK name, or null to skip
 * @returns {Object<string, object>}  operations keyed by operationId
 */
function collectOperations(bundledSpecPath, partition, nameFor) {
  const spec = JSON.parse(fs.readFileSync(bundledSpecPath, "utf8"));
  const globalSecurity = spec.security || [];
  const operations = {};

  for (const [opPath, item] of Object.entries(spec.paths || {})) {
    for (const method of HTTP_METHODS) {
      const op = item[method];
      if (!op || !op.operationId) continue;

      const httpMethod = method.toUpperCase();
      const sdkName = nameFor(op.operationId, { httpMethod, path: opPath });
      if (!sdkName) continue;

      const entry = {
        resource: partition,
        tag: (op.tags || [])[0],
        sdkName,
        httpMethod,
        path: opPath,
        ...securityOf(op, globalSecurity),
      };
      const levels = op["x-sailpoint-userLevels"] || op["x-sailpont-userLevels"];
      if (levels) entry.userLevels = levels;
      operations[op.operationId] = entry;
    }
  }
  return operations;
}

function securityOf(op, globalSecurity) {
  const hasOwn = Object.prototype.hasOwnProperty.call(op, "security");
  const security = hasOwn ? op.security : globalSecurity;
  const result = { userAuth: null, applicationAuth: null };
  if (!hasOwn) result.defaultScope = true;

  if (security.length === 0 || security.some((req) => Object.keys(req).length === 0)) {
    return { ...result, userAuth: [], applicationAuth: [], public: true };
  }
  for (const req of security) {
    for (const [scheme, scopes] of Object.entries(req)) {
      const key = scheme === "applicationAuth" ? "applicationAuth"
        : (scheme === "userAuth" || scheme === "UserContextAuth") ? "userAuth"
        : null;
      if (!key) continue;
      result[key] = [...new Set([...(result[key] || []), ...scopes])];
    }
  }
  return result;
}

/**
 * Write the manifest. For a single-partition build, an existing manifest is
 * updated: only the partitions that were rebuilt are replaced.
 */
function writeScopeManifest(outDir, { sdk, sdkVersion, operations, onlyPartition }) {
  const outPath = path.join(outDir, MANIFEST_NAME);
  let merged = operations;

  if (onlyPartition && fs.existsSync(outPath)) {
    const rebuilt = new Set(Object.values(operations).map((op) => op.resource));
    const existing = JSON.parse(fs.readFileSync(outPath, "utf8")).operations || {};
    merged = {};
    for (const [id, op] of Object.entries(existing)) {
      if (!rebuilt.has(op.resource)) merged[id] = op;
    }
    Object.assign(merged, operations);
  }

  const sorted = {};
  for (const id of Object.keys(merged).sort()) sorted[id] = merged[id];

  const manifest = { schemaVersion: SCHEMA_VERSION, sdk };
  if (sdkVersion) manifest.sdkVersion = sdkVersion;
  manifest.operations = sorted;

  fs.writeFileSync(outPath, JSON.stringify(manifest, null, 2) + "\n", "utf8");
  return { outPath, count: Object.keys(sorted).length };
}

// ---------------------------------------------------------------------------
// Naming functions. They match the openapi-generator method names.
// ---------------------------------------------------------------------------

/** TypeScript and Angular: the operationId as is. */
const typescriptName = (id) => id;

/** Go: the operationId with its first letter in upper case. */
const goName = (id) => id.charAt(0).toUpperCase() + id.slice(1);

/** Python: openapi-generator underscore(). */
function pythonName(id) {
  return id
    .replace(/([A-Z]+)([A-Z][a-z][a-z]+)/g, "$1_$2")
    .replace(/([a-z\d])([A-Z])/g, "$1_$2")
    .replace(/-/g, "_")
    .toLowerCase();
}

/**
 * PowerShell: read the generated Api/*.ps1 files under dir and map
 * "METHOD /path" to the cmdlet name. Cmdlet verbs do not follow a simple
 * rule, so they are not derived from the operationId.
 */
function readPowerShellCmdlets(dir) {
  const cmdlets = {};
  const fnPattern = /^function ([A-Za-z]+-[A-Za-z0-9]+)\s*\{/gm;

  const visit = (d) => {
    for (const entry of fs.readdirSync(d, { withFileTypes: true })) {
      const full = path.join(d, entry.name);
      if (entry.isDirectory()) {
        visit(full);
      } else if (entry.name.endsWith(".ps1") && path.basename(d) === "Api") {
        const text = fs.readFileSync(full, "utf8");
        const starts = [...text.matchAll(fnPattern)];
        starts.forEach((m, i) => {
          const body = text.slice(m.index, i + 1 < starts.length ? starts[i + 1].index : text.length);
          const uri = body.match(/\$LocalVarUri = '([^']+)'/);
          const method = body.match(/Invoke-ApiClient -Method '([A-Z]+)'/);
          if (uri && method) cmdlets[`${method[1]} ${uri[1]}`] = m[1];
        });
      }
    }
  };
  if (fs.existsSync(dir)) visit(dir);
  return cmdlets;
}

module.exports = {
  MANIFEST_NAME,
  collectOperations,
  writeScopeManifest,
  typescriptName,
  goName,
  pythonName,
  readPowerShellCmdlets,
};
