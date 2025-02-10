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

// Function to rename the file to 'indices.md'
const renameFileToIndices = function (filePath) {
  // Check if the file exists before proceeding
  if (!fs.existsSync(filePath)) {
    return; // Exit the function if the file does not exist
  }

  let dirPath = path.dirname(filePath); // Get the directory of the current file
  const newFilePath = path.join(dirPath, "Indices.md"); // Define the new file path
  
  try {
    fs.renameSync(filePath, newFilePath); // Rename the file synchronously
  } catch (error) {
    console.error(`Failed to rename file: ${error.message}`);
  }
};

// Function to create a directory if it doesn't exist
const createDir = (srcDir, dirName) => {
  const newDir = path.join(srcDir, dirName);

  // Check if the directory already exists before creating it
  if (fs.existsSync(newDir)) {
    return newDir; // Return the existing directory path if it already exists
  }

  // Create the directory only if it doesn't exist
  fs.mkdirSync(newDir, { recursive: true });

  return newDir; // Return the path for further use
};
// Function to handle the movement of files/folders
const moveFiles = (srcPath, destPath, filename = null) => {
  if (!fs.existsSync(destPath)) {
    fs.mkdirSync(destPath, { recursive: true });
  }

  if (filename) {
    // If a filename is provided, move only that file
    const filePath = path.join(srcPath, filename);
    if (fs.existsSync(filePath)) {
      fs.renameSync(filePath, path.join(destPath, filename));
    } else {
      console.error(`File ${filename} does not exist in the source path.`);
    }
  } else {
    // If no filename is provided, move all files/folders
    const files = fs.readdirSync(srcPath);
    files.forEach((file) => {
      const filePath = path.join(srcPath, file);
      if (fs.lstatSync(filePath).isFile()) {
        fs.renameSync(filePath, path.join(destPath, file));
      }
    });
  }
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
      } else if (file.includes('index.md') || file.includes('Methods') || file.includes('Models')) { moveFiles(currentPath, currentPath); } // Move to Models
      else {
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
        if (line.includes("**Indices** | [**[]Index**](index)")) {
          fileOut.push(
            line.replaceAll(
              "**Indices** | [**[]Index**](index)",
              "**Indices** | [**[]Index**](indices)"
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

    if (file.includes("Indices.md")) {
      // Loop through each line of rawDataArra
      for (const line of rawDataArra) {
        if (line.includes("slug:")) {  // Exact match for the slug
          fileOut.push(
            line.replace(
              "index",
              "indices"
            )
          );
          madeChange = true;
        } else if (line.includes("id:")) {  // Exact match for "id: index"
          fileOut.push(
            line.replace(
              "index",
              "indices"
            )
          );
          madeChange = true;
        } else if (line.includes("title:")) {  // Exact match for "title: Index"
          fileOut.push(
            line.replace(
              "Index",
              "Indices"
            )
          );
          madeChange = true;
        } else if (line.includes("pagination_label:")) {  // Exact match for "pagination_label: Index"
          fileOut.push(
            line.replace(
              "Index",
              "Indices"
            )
          );
          madeChange = true;
        } else if (line.includes("sidebar_label:")) {  // Exact match for "sidebar_label: Index"
          fileOut.push(
            line.replace(
              "Index",
              "Indices"
            )
          );
          madeChange = true;
        } else {
          // If the line doesn't match any condition, just push it as-is
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();  // Replace the original array with modified one
      fileOut = [];  // Reset the output array
    }

    if (madeChange) {
      fs.writeFileSync(file, rawDataArra.join("\n"));
    }
  }
}

let myArray = [];

// move all files from doc folder into either method, models or examples folder
processDirectory(path.join(process.argv[2], '/docs'));

//rename index.md to indices.md
renameFileToIndices(path.join(process.argv[2], '/docs/models/Index.md'));

// get all the files in the folder
getAllFiles(process.argv[2], myArray);
// fix the files
fixFiles(myArray)
//moving index.md from root to docs/models after the generation of the models
moveFiles(process.argv[2], path.join(process.argv[2], '/docs/Models'), "index.md");
// merge all the code examples into a single file
mergeCodeExampleFiles(path.join(process.argv[2], 'docs/Examples'));