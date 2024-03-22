const fs = require("fs");
const path = require("path");
const getAllFiles = function (dirPath, arrayOfFiles) {
  files = fs.readdirSync(dirPath);
  arrayOfFiles = arrayOfFiles || [];
  files.forEach(function (file) {
    if (fs.statSync(dirPath + "/" + file).isDirectory()) {
      arrayOfFiles = getAllFiles(dirPath + "/" + file, arrayOfFiles);
    } else {
      arrayOfFiles.push(
        path.join(__dirname.replaceAll("sdk-resources", ""), dirPath, "/", file)
      );
    }
  });
  return arrayOfFiles;
};

const moveFile = function (sourcePath, targetPath) {
  // Create the target directory if it doesn't exist
  const directory = path.dirname(targetPath);
  if (!fs.existsSync(directory)) {
    fs.mkdirSync(directory, { recursive: true });
  }

  // Move the file
  fs.renameSync(sourcePath, targetPath);
  // console.log(`Moved: ${sourcePath} to ${targetPath}`);
};

const renameFileToIndices = function (filePath) {
  // Determine the new file path by changing the file's name to 'indices'
  let dirPath = path.dirname(filePath); // Gets the directory path of the current file

  const targetDir = path.join(dirPath, "Models"); // Appends 'models' to the directory path

  const newFilePath = path.join(targetDir, "indices.md"); // Constructs the full target path

  // Rename the file
  fs.renameSync(filePath, newFilePath);
  console.log(`Renamed: ${filePath} to ${newFilePath}`);
};

const fixFiles = function (myArray) {
  for (const file of myArray) {
    let fileOut = [];
    let madeChange = false;
    let rawdata = fs.readFileSync(file).toString();
    let rawDataArra = rawdata.split("\n");

    if (file.includes("ModelEvent.ps1")) {
      console.log("Found it");
    }
    // adjust the document type naming to fix the duplicate type errors
    let changedType = false;
    if (file.includes("ModelEvent.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedType = true;
        } else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(
            line.replace(
              "if ($null -eq $Type) {",
              "if ($null -eq $DocumentType) {"
            )
          );
          madeChange = true;
        } else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(
            line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}')
          );
          madeChange = true;
        } else if (
          line.includes(
            '$Type = $JsonParameters.PSobject.Properties["_type"].value'
          )
        ) {
          fileOut.push(
            line.replace(
              '$Type = $JsonParameters.PSobject.Properties["_type"].value',
              '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'
            )
          );
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    let changedDocumentType = false;
    if (file.includes("EventDocument.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("{Type}") && changedDocumentType == false) {
          fileOut.push(line.replace("{Type}", "{DocumentType}"));
          madeChange = true;
          changedDocumentType = true;
        } else if (line.includes("if ($null -eq $Type) {")) {
          fileOut.push(
            line.replace(
              "if ($null -eq $Type) {",
              "if ($null -eq $DocumentType) {"
            )
          );
          madeChange = true;
        } else if (line.includes('"_type" = ${Type}')) {
          fileOut.push(
            line.replace('"_type" = ${Type}', '"_type" = ${DocumentType}')
          );
          madeChange = true;
        } else if (
          line.includes(
            '$Type = $JsonParameters.PSobject.Properties["_type"].value'
          )
        ) {
          fileOut.push(
            line.replace(
              '$Type = $JsonParameters.PSobject.Properties["_type"].value',
              '$DocumentType = $JsonParameters.PSobject.Properties["_type"].value'
            )
          );
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    if (file.includes("CCApplicationsApi.ps1")) {
      for (const line of rawDataArra) {
        if (line.includes("[System.Collections.Hashtable]")) {
          fileOut.push(
            line.replace("[System.Collections.Hashtable]", "[PSCustomObject]")
          );
          madeChange = true;
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

    if (file.includes("PasswordDictionaryApi.ps1")) {
      for (const line of rawDataArra) {
        if (
          line.includes(
            "$LocalVarAccepts = @('text/plain', 'application/json')"
          )
        ) {
          fileOut.push(
            line.replace(
              "$LocalVarAccepts = @('text/plain', 'application/json')",
              "$LocalVarAccepts = @('text/plain')"
            )
          );
          madeChange = true;
        } else if (line.includes("[String]")) {
          fileOut.push(line.replace("[String]", ""));
          madeChange = true;
        } else if (
          line.includes('[ValidateSet("text/plain", "application/json")]')
        ) {
          fileOut.push(
            line.replace('[ValidateSet("text/plain", "application/json")]', "")
          );
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

    for (const line of rawDataArra) {
      if (line.includes("**Indices** | Pointer to [**[]Index**](Index)")) {
        fileOut.push(
          line.replaceAll(
            "**Indices** | Pointer to [**[]Index**](Index)",
            "**Indices** | Pointer to [**[]Index**](Indices)"
          )
        );
        madeChange = true;
      } else {
        fileOut.push(line);
      }
    }

    if (madeChange) {
      fs.writeFileSync(file, rawDataArra.join("\n"));
    }

    if (file.endsWith("Api.md")) {
      let dirPath = path.dirname(file); // Gets the directory path of the current file

      const targetDir = path.join(dirPath, "Methods"); // Appends 'methods' to the directory path

      const targetPath = path.join(targetDir, path.basename(file)); // Constructs the full target path

      // Check if the file exists before trying to move it
      if (fs.existsSync(file)) {
        moveFile(file, targetPath);
      } else {
        console.error(`File not found: ${file}`);
      }
    } else if (
      file.includes(`\\PSSailpoint\\v3\\docs`) ||
      file.includes(`\\PSSailpoint\\beta\\docs`)
    ) {
      if (file.includes("Index.md")) {
        if (fs.existsSync(file)) {
          renameFileToIndices(file);

          continue; // Skip further processing for this file
        } else {
          console.error(`File not found: ${file}`);
          continue;
        }
      } else {
        let dirPath = path.dirname(file); // Gets the directory path of the current file

        const targetDir = path.join(dirPath, "Models"); // Appends 'models' to the directory path

        const targetPath = path.join(targetDir, path.basename(file)); // Constructs the full target path

        // Check if the file exists before trying to move it
        if (fs.existsSync(file)) {
          moveFile(file, targetPath);
        } else {
          console.error(`File not found: ${file}`);
        }
      }
    }
  }
};

let myArray = [];
getAllFiles(process.argv[2], myArray);

fixFiles(myArray);
