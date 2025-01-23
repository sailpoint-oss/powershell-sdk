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


const fixFiles = function (myArray) {
  for (const file of myArray) {

    // Check if the file exists before attempting to read it
    if (!fs.existsSync(file)) {
      console.log(`File not found: ${file}`);
      continue; // Skip this file if it doesn't exist
    }


    let fileOut = [];
    let madeChange = false;
    let rawdata = fs.readFileSync(file).toString();
    let rawDataArra = rawdata.split("\n");

    if (file.includes("ModelEvent.ps1")) {
      console.log("Found it");
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
getAllFiles(process.argv[2], myArray);
fixFiles(myArray)

