const fs = require("fs").promises;
const path = require("path");

const getAllFiles = async (dirPath, arrayOfFiles = []) => {
  const files = await fs.readdir(dirPath);
  for (const file of files) {
    const fullPath = path.join(dirPath, file);
    const stat = await fs.stat(fullPath);
    if (stat.isDirectory()) {
      await getAllFiles(fullPath, arrayOfFiles); // Recurse into directories
    } else {
      arrayOfFiles.push(path.join(__dirname.replace('sdk-resources', ''), fullPath));
    }
  }
  return arrayOfFiles;
};


const renameFileToIndices = async (filePath) => {
  try {
    const newFilePath = path.join(path.dirname(filePath), "Indices.md");
    await fs.rename(filePath, newFilePath);
  } catch (error) {
    console.error(`Failed to rename file: ${error.message}`);
  }
};

const createDir = async (srcDir, dirName) => {
  const newDir = path.join(srcDir, dirName);
  try {
    await fs.mkdir(newDir, { recursive: true });
  } catch (err) {
    console.error(`Error creating directory: ${err.message}`);
  }
  return newDir;
};

const moveFiles = async (srcPath, destPath, filename = null) => {
  try {
    if (!await fs.stat(destPath)) {
      await fs.mkdir(destPath, { recursive: true });
    }

    if (filename) {
      const filePath = path.join(srcPath, filename);
      if (await fs.stat(filePath)) {
        await fs.rename(filePath, path.join(destPath, filename));
      } else {
        console.error(`File ${filename} does not exist in the source path.`);
      }
    } else {
      const files = await fs.readdir(srcPath);
      for (const file of files) {
        const filePath = path.join(srcPath, file);
        if ((await fs.stat(filePath)).isFile()) {
          await fs.rename(filePath, path.join(destPath, file));
        }
      }
    }
  } catch (error) {
    console.error(`Error moving files: ${error.message}`);
  }
};

const processDirectory = async (srcDir) => {
  const files = await fs.readdir(srcDir);
  const methodsDir = await createDir(srcDir, 'Methods');
  const modelsDir = await createDir(srcDir, 'Models');

  for (const file of files) {
    const currentPath = path.join(srcDir, file);
    const destMethodPath = path.join(methodsDir, file);
    const destModelPath = path.join(modelsDir, file);

    try {
      const stat = await fs.stat(currentPath);
      if (stat.isDirectory()) {
        if (file.includes('Api.md')) {
          await moveFiles(currentPath, methodsDir);
        } else if (file.includes('Methods')) {
          await moveFiles(currentPath, methodsDir);
        } else if (file.includes('Models')) {
          await moveFiles(currentPath, modelsDir);
        } else {
          await moveFiles(currentPath, currentPath); // default for directories
        }
      } else {
        if (file === 'powershell_code_examples_overlay.yaml') {
          continue; 
        }
      
        if (file.includes('Api.md')) {
          await fs.rename(currentPath, destMethodPath);
        } else {
          await fs.rename(currentPath, destModelPath); // default for files
        }
      }
    } catch (err) {
      console.error(`Error processing file: ${file}, ${err.message}`);
    }
  }
};



const fixFiles = async function (myArray) {
  for (const file of myArray) {
    const absolutePath = path.resolve(file);

    try {
      // Check if the file exists and is accessible
      await fs.access(absolutePath, fs.constants.F_OK);
    } catch (err) {
      console.error(`File not found or inaccessible: ${absolutePath}`);
      continue; // Skip this file if it doesn't exist or isn't accessible
    }

    let fileOut = [];
    let madeChange = false;
    let rawdata = await fs.readFile(absolutePath, 'utf-8');
    let rawDataArra = rawdata.split("\n");

    // Handling Api.md and .yaml files
    if (file.includes("Api.md") || file.includes(".yaml")) {
      for (const line of rawDataArra) {
        if (line.includes("Initialize-")) {
          madeChange = true;
          // Simply skip adding this line to fileOut
          continue; // Skip this line
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    // Processing .md files for specific replacements
    if (file.includes(".md")) {
      for (const line of rawDataArra) {
        if (line.includes("../models/system-collections-hashtable")) {
          fileOut.push(line.replace("../models/system-collections-hashtable", "https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0"));
          madeChange = true;
        } else if (line.includes("(system-collections-hashtable)")) {
          fileOut.push(line.replace("(system-collections-hashtable)", "https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0"));
          madeChange = true;
        } else if (line.includes("(../models/map)")) {
          fileOut.push(line.replace("(../models/map)", "(https://learn.microsoft.com/en-us/dotnet/api/system.collections.hashtable?view=net-9.0)"));
          madeChange = true;
        } else if (line.includes("(array)")) {
          fileOut.push(line.replace("(array)", "(https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays?view=powershell-7.4)"));
          madeChange = true;
        } else if (line.includes("(../models/array)")) {
          fileOut.push(line.replace("(../models/array)", "(https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_arrays?view=powershell-7.4)"));
          madeChange = true;
        } else if (line.includes("../models/any-type")) {
          fileOut.push(line.replace("../models/any-type", "https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4"));
          madeChange = true;
        } else if (line.includes("(any-type)")) {
          fileOut.push(line.replace("(any-type)", "https://learn.microsoft.com/en-us/powershell/scripting/lang-spec/chapter-04?view=powershell-7.4"));
          madeChange = true;
        } else if (line.includes('$Filters =')) {
          const firstQuoteIndex = line.indexOf('"');
          const lastQuoteIndex = line.lastIndexOf('"');
          if (firstQuoteIndex !== -1 && lastQuoteIndex !== -1 && firstQuoteIndex !== lastQuoteIndex) {
            const contentInsideQuotes = line.substring(firstQuoteIndex + 1, lastQuoteIndex);
            const replacedLine = line.substring(0, firstQuoteIndex) + "'" + contentInsideQuotes + "'" + line.substring(lastQuoteIndex + 1);
            fileOut.push(replacedLine);
            madeChange = true;
          } else {
            fileOut.push(line);
          }
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    // Adjust for specific script files like ModelEvent.ps1 and EventDocument.ps1
    let changedType = false;
    if (file.includes("ModelEvent.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedType = true;
        } else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(line.replace("if ($null -eq $Type) {", "if ($null -eq $DocumentType) {"));
          madeChange = true;
        } else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}'));
          madeChange = true;
        } else if (line.includes('$Type = $JsonParameters.PSobject.Properties["_type"].value')) {
          fileOut.push(line.replace('$Type = $JsonParameters.PSobject.Properties["_type"].value', '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'));
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    // Specific replacements for EventDocument.ps1
    let changedDocumentType = false;
    if (file.includes("EventDocument.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedDocumentType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedDocumentType = true;
        } else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(line.replace("if ($null -eq $Type) {", "if ($null -eq $DocumentType) {"));
          madeChange = true;
        } else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}'));
          madeChange = true;
        } else if (line.includes('$Type = $JsonParameters.PSobject.Properties["_type"].value')) {
          fileOut.push(line.replace('$Type = $JsonParameters.PSobject.Properties["_type"].value', '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'));
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    // Write changes back to file if any modification was made
    if (madeChange) {
      await fs.writeFile(absolutePath, rawDataArra.join("\n"));
    }
  }
}


const main = async () => {
  let myArray = [];

  // Main processing
  await processDirectory(path.join(process.argv[2], '/docs'));
  await renameFileToIndices(path.join(process.argv[2], '/docs/Models/Index.md'));
  await getAllFiles(process.argv[2], myArray);
  await fixFiles(myArray);
  await moveFiles(process.argv[2], path.join(process.argv[2], '/docs/Models'), "Index.md");
};

main().catch((error) => {
  console.error(`Error in script: ${error.message}`);
});
