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

// Function to move files from 'docs' to the destination folder (including Examples)
const moveFiles = function (srcDir, destDir) {
  // Check if source and destination directories exist
  if (!fs.existsSync(srcDir)) {
    console.error(`Source directory not found: ${srcDir}`);
    return;
  }
  if (!fs.existsSync(destDir)) {
    console.error(`Destination directory not found: ${destDir}`);
    return;
  }

  // Function to replace "Methods" with "Examples" in the destination directory path
  const createExamplesDir = (destDir) => {
    // Replace 'Methods' with 'Examples' in the directory path
    const examplesDir = destDir.replace('Methods', 'Examples');

    // Create the "Examples" folder if it doesn't exist
    if (!fs.existsSync(examplesDir)) {
      fs.mkdirSync(examplesDir, { recursive: true });
    }

    return examplesDir; // Return the path for use in moving files
  };

  // Read all files and directories in the source directory
  const files = fs.readdirSync(srcDir);

  files.forEach(function (file) {
    const currentPath = path.join(srcDir, file);
    let destPath = path.join(destDir, file);
    const examplesDir = createExamplesDir(destDir); // Get the path for Examples folder
    let destExamplePath = path.join(examplesDir, file); // Path for file in Examples folder

    // If it's a directory, check if it should be moved
    if (fs.statSync(currentPath).isDirectory()) {
      if (file.includes('developerSite_code_examples')) {
        // Move the directory to the Examples folder
        moveFiles(currentPath, examplesDir); // Move the directory into the Examples folder
      } else {
        // Otherwise, move the directory to the destination
        moveFiles(currentPath, destPath);
      }
    } else {
      // If it's a file and its name contains 'developerSite_code_examples'
      if (file.includes('developerSite_code_examples')) {
        // Move the file to the Examples folder
        fs.renameSync(currentPath, destExamplePath);
      } else {
        // Otherwise, move it to the destination directory directly
        fs.renameSync(currentPath, destPath);
      }
    }
  });
};

// Function to recursively remove a folder and all its contents
const removeFolder = function (dirPath) {
  // Check if the directory exists before proceeding
  if (!fs.existsSync(dirPath)) {
    console.error(`Directory not found: ${dirPath}`);
    return; // Exit the function if the directory doesn't exist
  }

  // Get the list of all files and directories in the current directory
  const files = fs.readdirSync(dirPath);

  // Loop through each file/directory
  files.forEach(function (file) {
    const currentPath = path.join(dirPath, file);

    if (fs.statSync(currentPath).isDirectory()) {
      // Recursively delete subdirectories
      removeFolder(currentPath);
    } else {
      // Remove files
      fs.unlinkSync(currentPath);
    }
  });

  // After deleting all contents, remove the directory itself
  fs.rmdirSync(dirPath);
};

// Function to remove files but leave directories intact
const removeFilesFromFolder = (dirPath) => {
  // Check if the directory exists
  if (!fs.existsSync(dirPath)) {
    console.error(`Directory not found: ${dirPath}`);
    return;
  }

  // Read all items in the directory
  const items = fs.readdirSync(dirPath);

  items.forEach((item) => {
    const itemPath = path.join(dirPath, item);

    // Check if it's a file or a directory
    if (fs.statSync(itemPath).isFile()) {
      // If it's a file, delete it
      fs.unlinkSync(itemPath);
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
// remove initial files from the docs folder from the sdk generation as it just dumps all the method in model docs in the same folder.
removeFilesFromFolder(path.join(process.argv[2], 'docs'));
// remove the src folder that gets generated in the docs folder for method docs and model docs
removeFolder(path.join(process.argv[2], 'docs/Methods/src'));
removeFolder(path.join(process.argv[2], 'docs/Models/src'));
// move the files from the nested docs folder inside of models to just the models folder
moveFiles(path.join(process.argv[2], 'docs/Models/docs'), path.join(process.argv[2], 'docs/Models'));
// remove the nested docs folder
removeFolder(path.join(process.argv[2], 'docs/Models/docs'));
// move the files from the nested docs folder inside of methods to just the methods folder
moveFiles(path.join(process.argv[2], '/docs/Methods/docs'), path.join(process.argv[2], '/docs/Methods'));
// remove the nested docs folder
removeFolder(path.join(process.argv[2], '/docs/Methods/docs'));
// get all the files in the folder
getAllFiles(process.argv[2], myArray);
// fix the files
fixFiles(myArray)
// merge all the code examples into a single file
mergeCodeExampleFiles(path.join(process.argv[2], 'docs/Examples'));


