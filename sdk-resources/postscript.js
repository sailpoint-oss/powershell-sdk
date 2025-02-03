const fs = require("fs");
const path = require("path");
const getAllFiles = function (dirPath, arrayOfFiles) {
  files = fs.readdirSync(dirPath);
  arrayOfFiles = arrayOfFiles || [];
  files.forEach(function (file) {
    if (fs.statSync(dirPath + "/" + file).isDirectory()) {
      arrayOfFiles = getAllFiles(dirPath + "/" + file, arrayOfFiles);
    } else {
      arrayOfFiles.push(path.join(__dirname.replaceAll('sdk-resources', ''), dirPath, "/", file));
    }
  });
  return arrayOfFiles;
};
// Function to merge all files in a folder into a single file
const mergeCodeExampleFiles = (srcDir) => {
  // Check if the source directory exists
  if (!fs.existsSync(srcDir)) {
    console.error(`Source directory not found: ${srcDir}`);
    return;
  }
  // Create a destination file path
  const destFile = path.join(srcDir, 'code_examples_overlay.yaml');
  // Read all files in the source directory
  const files = fs.readdirSync(srcDir);
  // Create a writable stream for the destination file
  const destStream = fs.createWriteStream(destFile, { flags: 'w' }); // 'w' for writing (overwrite existing content)
  files.forEach((file) => {
    const filePath = path.join(srcDir, file);
    // Only process files (skip directories)
    if (fs.statSync(filePath).isFile()) {
      // Read the content of each file
      const fileContent = fs.readFileSync(filePath, 'utf8');
      // Append the content to the destination file
      destStream.write(fileContent);
      // Delete the original file after merging
      fs.unlinkSync(filePath);
    }
  });
  // Close the stream
  destStream.end(() => {
    console.log(`All files have been merged into ${destFile}`);
  });
};

const renameFileToIndices = function (filePath) {
  // Determine the new file path by changing the file's name to 'indices'
  let dirPath = path.dirname(filePath); // Gets the directory path of the current file
  const newFilePath = path.join(dirPath, "indices.md"); // Constructs the full target path
  // Rename the file
  fs.renameSync(filePath, newFilePath);
};
// Function to create a directory if it doesn't exist
const createDir = (srcDir, dirName) => {
  const newDir = path.join(srcDir, dirName);
  // Create the directory only if it doesn't exist
  if (!fs.existsSync(newDir)) {
    fs.mkdirSync(newDir, { recursive: true });
  }
  return newDir; // Return the path for further use
};
// Function to handle the movement of files/folders
const moveFiles = (srcPath, destPath) => {
  if (!fs.existsSync(destPath)) {
    fs.mkdirSync(destPath, { recursive: true });
  }
  // Move file/folder from srcPath to destPath
  fs.renameSync(srcPath, path.join(destPath, path.basename(srcPath)));
};
// Main logic
const processDirectory = (srcDir) => {
  // Read all files and directories in the source directory
  const files = fs.readdirSync(srcDir);
  // Create necessary directories
  const examplesDir = createDir(srcDir, 'Examples');
  const methodsDir = createDir(srcDir, 'Methods');
  const modelsDir = createDir(srcDir, 'Models');
  // Iterate over each file/folder in the source directory
  files.forEach(file => {
    const currentPath = path.join(srcDir, file);
    
    // Ensure destination paths for files
    const destExamplePath = path.join(examplesDir, file);
    const destMethodPath = path.join(methodsDir, file);
    const destModelPath = path.join(modelsDir, file);
    // If it's a directory
    if (fs.statSync(currentPath).isDirectory()) {
      // Move specific directories based on naming conventions
      if (file.includes('developerSite_code_examples')) {
        moveFiles(currentPath, examplesDir); // Move to Examples
      } else if (file.includes('Api.md')) {
        moveFiles(currentPath, methodsDir); // Move to Methods
      } else {
        moveFiles(currentPath, modelsDir); // Otherwise, move to Models
      }
    } else { // If it's a file
      // Move files based on naming conventions
      if (file.includes('developerSite_code_examples')) {
        fs.renameSync(currentPath, destExamplePath); // Move to Examples
      } else if (file.includes('Api.md')) {
        fs.renameSync(currentPath, destMethodPath); // Move to Methods
      } else {
        fs.renameSync(currentPath, destModelPath); // Otherwise, move to Models
      }
    }
  });
};
const fixFiles = function (myArray) {
  for (const file of myArray) {
    // Check if the file exists before attempting to read it
    if (!fs.existsSync(file)) {
      console.error(`File not found: ${file}`);
      continue; // Skip this file if it doesn't exist
    }

    let fileOut = [];
    let madeChange = false;
    let rawdata = fs.readFileSync(file).toString();
    let rawDataArra = rawdata.split("\n");
    if (file.includes("Index.md")) {
      if (fs.existsSync(file)) {
        renameFileToIndices(file);
        continue; // Skip further processing for this file
      } else {
        console.error(`File not found: ${file}`);
        continue;
      }
    }
    if (file.includes("Api.md") || file.includes(".yaml")) {
      for (const line of rawDataArra) {
        if (line.includes("Initialize-")) {
          madeChange = true;
          // Simply skip adding this line to fileOut
          continue; // This will skip the rest of the loop and not add the line to fileOut
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }


    if (file.includes(".md")) {
      for (const line of rawDataArra) {
        if (line.includes("**Indices** | Pointer to [**[]Index**](Index)")) {
          fileOut.push(
            line.replaceAll(
              "**Indices** | Pointer to [**[]Index**](Index)",
              "**Indices** | Pointer to [**[]Index**](Indices)"
            )
          );
          madeChange = true;
        } else if (line.includes("../models/system-collections-hashtable")) {
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
          // Find the position of the first and last quote
          const firstQuoteIndex = line.indexOf('"');
          const lastQuoteIndex = line.lastIndexOf('"');
          if (firstQuoteIndex !== -1 && lastQuoteIndex !== -1 && firstQuoteIndex !== lastQuoteIndex) {
            // Extract the content inside the quotes
            const contentInsideQuotes = line.substring(firstQuoteIndex + 1, lastQuoteIndex);
            // Rebuild the line, replacing the outer quotes with single quotes
            const replacedLine = line.substring(0, firstQuoteIndex) + "'" + contentInsideQuotes + "'" + line.substring(lastQuoteIndex + 1);
            fileOut.push(replacedLine);
            madeChange = true;
          } else {
            fileOut.push(line);  // If no valid quotes, push the line as it is
          }
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }
    // adjust the document type naming to fix the duplicate type errors
    let changedType = false
    if (file.includes("ModelEvent.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedType = true;
        }
        else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(line.replace("if ($null -eq $Type) {", "if ($null -eq $DocumentType) {"));
          madeChange = true;
        }
        else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}'));
          madeChange = true;
        }
        else if (line.includes('$Type = $JsonParameters.PSobject.Properties["_type"].value')) {
          fileOut.push(line.replace('$Type = $JsonParameters.PSobject.Properties["_type"].value', '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'));
          madeChange = true;
        }
        else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    let changedDocumentType = false
    if (file.includes("EventDocument.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedDocumentType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedDocumentType = true;
        }
        else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(line.replace("if ($null -eq $Type) {", "if ($null -eq $DocumentType) {"));
          madeChange = true;
        }
        else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}'));
          madeChange = true;
        }
        else if (line.includes('$Type = $JsonParameters.PSobject.Properties["_type"].value')) {
          fileOut.push(line.replace('$Type = $JsonParameters.PSobject.Properties["_type"].value', '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'));
          madeChange = true;
        }
        else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }
    if (file.includes("CCApplicationsApi.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("[System.Collections.Hashtable]")) {
          fileOut.push(line.replace("[System.Collections.Hashtable]", "[PSCustomObject]"));
          madeChange = true;
        }
        else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }
    if (file.includes("PasswordDictionaryApi.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("$LocalVarAccepts = @('text/plain', 'application/json')")) {
          fileOut.push(line.replace("$LocalVarAccepts = @('text/plain', 'application/json')", "$LocalVarAccepts = @('text/plain')"));
          madeChange = true;
        } else if (line.includes("[String]")) {
          fileOut.push(line.replace("[String]", ""));
          madeChange = true;
        } else if (line.includes('[ValidateSet("text/plain", "application/json")]')) {
          fileOut.push(line.replace('[ValidateSet("text/plain", "application/json")]', ""));
          madeChange = true;
        } else if (line.includes("$ReturnType,")) {
          fileOut.push(line.replace("$ReturnType,", ""));
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }
    if (madeChange) {
      fs.writeFileSync(file, rawDataArra.join("\n"));
    }
  }
}

let myArray = [];
// move all files from doc folder into either method, models or examples folder
processDirectory(path.join(process.argv[2], '/docs'));
// get all the files in the folder
getAllFiles(process.argv[2], myArray);
// fix the files
fixFiles(myArray)
// merge all the code examples into a single file
mergeCodeExampleFiles(path.join(process.argv[2], 'docs/Examples'));