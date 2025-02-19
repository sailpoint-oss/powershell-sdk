const fs = require("fs").promises;
const path = require("path");
const { jsonrepair } = require('jsonrepair');
const { json } = require("stream/consumers");

let successCount = 0;
let failureCount = 0;

function preprocessMalformedJSON(jsonString) {
  // Step 1: Quote keys and replace "=" signs with ":"
  let firstPass = jsonString.replace(/(\w+)=/g, '"$1":')
    .replace(/\"recipientId\.\$\=\$\.(\w+\.\w+)/g, '"recipientId.$": "$.$1"');

  // Step 2: Fix the VarFilter expression: Ensure that quotes around the value are escaped
  let secondPass = firstPass.replace(/"VarFilter":\s*"([^"]+)"/g, (match, p1) => {
    // Escape quotes inside the VarFilter value
    return `"VarFilter": "${p1.replace(/(["\\])/g, '\\$1')}"`;
  });

  // Step 3: Handle any remaining nested objects
  let thirdPass = secondPass.replace(/(\{[^}]*\})/g, (match) => {
    return match.replace(/(\w+)=/g, '"$1":'); // Ensure keys inside objects are quoted
  });

  // Step 4: Handle arrays to ensure proper quoting for array elements
  let fourthPass = thirdPass.replace(/\[([^\]]+)\]/g, (match) => {
    return match.replace(/(\w+)=/g, '"$1":'); // Ensure keys inside array elements are quoted
  });

  // Step 5: Ensure any remaining unquoted string values are quoted properly
  let fifthPass = fourthPass.replace(/:\s*([^",\s\[\{]+)(?=\s*[},\]])/g, (match, p1) => {
    if (!/^(true|false|null)$/.test(p1)) {
      return `: "${p1}"`; // Quote string values
    }
    return `: ${p1}`; // Leave booleans and null unquoted
  });

  let fixIdentificationNumber = firstPass.replace(/"identificationNumber":\s*"([^"]+)}"/g, '"identificationNumber": "$1"');

  // Step 3: Fix missing quotes around 'displayName'
  let fixDisplayNameQuotes = fixIdentificationNumber.replace(/"displayName":([^",\s}]+)/g, '"displayName": "$1"');

  // Step 4: Handle 'SignedS3Url' and escape inner quotes in the URL
  let fixSignedS3UrlQuotes = fixDisplayNameQuotes.replace(/"SignedS3Url":\s*"([^"]+)"/g, (match, url) => {
    return `"SignedS3Url": "${url.replace(/"([^"]+)"/g, '"$1"')}"`; // Escape inner quotes
  });

  // Step 6: Escape the quotes around "201327fda1c44704ac01181e963d463c" inside VarFilter
  let finalPass = fifthPass.replace(/"201327fda1c44704ac01181e963d463c"/g, '\\\"201327fda1c44704ac01181e963d463c\\\"');
  // This ensures that the quotes are properly escaped within the string

  // Step 7: Special case for "recipientId.$": "$.identity.id"
  finalPass = finalPass.replace(/recipientId\.\$\=\$\.(\w+\.\w+)/g, '"recipientId.$": "$.$1"');

  // Step 8: Fix the 'Send "Email"' to 'Send Email' 
  // Fix the case where there's a space between 'Send' and '"Email"'
  finalPass = finalPass.replace(/Send\s+"Email"/g, 'Send Email');

  // Step 9: Ensure all string values are quoted properly, including "Message"
  // Updated regex to quote any value that is not already quoted
  finalPass = finalPass.replace(/(\w+):\s*([^",\s\[\{][^}]*)(?=\s*[},\]])/g, (match, p1, p2) => {
    // If the value is not a boolean or null and is unquoted, add quotes around it
    if (/^[A-Za-z0-9\s\.-]+$/.test(p2) && !/^".*"$/.test(p2)) {
      return `"${p1}": "${p2}"`; // Quote string values
    }
    return match;
  });

  // **Specific fix for 'API/Feature not enabled for your organization.'**
  finalPass = finalPass.replace(/API\/Feature not enabled for your organization\./g, '"API/Feature not enabled for your organization."');


  // Clean up trailing commas
  finalPass = finalPass.replace(/,(\s*[}\]])/g, '$1'); // Remove trailing commas

  console.log("Final Preprocessed JSON:", finalPass);
  return finalPass;
}


function testJSONRepair(jsonstring) {
  try {
    console.log("Starting preprocessing...");

    const preprocessedJSON = preprocessMalformedJSON(jsonstring);
    console.log("Preprocessed JSON:", preprocessedJSON); // Log preprocessed JSON

    const repairedJSON = jsonrepair(preprocessedJSON);

    // Convert to JavaScript object
    const parsedObject = JSON.parse(repairedJSON);

    // Increment success count
    successCount++;
    console.log("Successful repair count:", successCount);
    return repairedJSON;
  } catch (error) {
    // Increment failure count and log error
    failureCount++;
    console.error("Error repairing JSON:", jsonstring);
    console.error("Error message:", error.message);
    console.log("Failed repair count:", failureCount);
  }
}

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

const mergeCodeExampleFiles = async (srcDir) => {
  try {
    // Check if the source directory exists asynchronously
    await fs.access(srcDir);

    const destFile = path.join(srcDir, 'code_examples_overlay.yaml');
    const files = await fs.readdir(srcDir);

    // Use writeFile instead of createWriteStream to simplify handling in async/await context
    let allContent = '';

    for (const file of files) {
      const filePath = path.join(srcDir, file);
      const stat = await fs.stat(filePath);

      if (stat.isFile()) {
        const fileContent = await fs.readFile(filePath, 'utf8');
        allContent += fileContent;  // Concatenate file contents
        await fs.unlink(filePath);  // Delete the original file after merging
      }
    }

    // Write all content into the destination file
    await fs.writeFile(destFile, allContent);

    console.log(`All files have been merged into ${destFile}`);
  } catch (error) {
    console.error(`Error processing the directory: ${error.message}`);
  }
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
  const examplesDir = await createDir(srcDir, 'Examples');
  const methodsDir = await createDir(srcDir, 'Methods');
  const modelsDir = await createDir(srcDir, 'Models');

  for (const file of files) {
    const currentPath = path.join(srcDir, file);
    const destExamplePath = path.join(examplesDir, file);
    const destMethodPath = path.join(methodsDir, file);
    const destModelPath = path.join(modelsDir, file);

    try {
      const stat = await fs.stat(currentPath);
      if (stat.isDirectory()) {
        if (file.includes('developerSite_code_examples')) {
          await moveFiles(currentPath, examplesDir);
        } else if (file.includes('Api.md')) {
          await moveFiles(currentPath, methodsDir);
        } else if (file.includes('index.md') || file.includes('Methods') || file.includes('Models')) {
          if (file.includes('Methods')) {
            await moveFiles(currentPath, methodsDir);
          } else {
            await moveFiles(currentPath, modelsDir);
          }
        } else {
          await moveFiles(currentPath, modelsDir);
        }
      } else {
        if (file.includes('developerSite_code_examples')) {
          await fs.rename(currentPath, destExamplePath);
        } else if (file.includes('Api.md')) {
          await fs.rename(currentPath, destMethodPath);
        } else {
          await fs.rename(currentPath, destModelPath);
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

    if (file.includes(".md") && !file.includes("Api.md")) {
      console.log(`Processing file: ${file}`);
      for (const line of rawDataArra) {
        if (line.includes('}"@')) {
          // Extracting the content between @" " using a regular expression
          const match = line.match(/@\"(.*?)\"@/);
          if (match && match[1]) {
            const extractedString = match[1];

            // Ensure the extracted string is properly handled as JSON and repaired
            const repairedJSON = testJSONRepair(extractedString);

            // Replace the extracted JSON portion with the repaired JSON in the line
            fileOut.push(line.replace(extractedString, repairedJSON));
            madeChange = true;
          }
        } else {
          fileOut.push(line);
        }
      }
      rawDataArra = fileOut.slice();
      fileOut = [];
    }

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
  await mergeCodeExampleFiles(path.join(process.argv[2], 'docs/Examples'));
  // // Example malformed JSON string to test
  // const malformedJSON = `{  Start: "Send Email Test", Steps: {Send Email={actionId=sp:send-email, attributes={body=This is a test, from=sailpoint@sailpoint.com, recipientId.$=$.identity.id, subject=test}, nextStep=success, selectResult=null, type=ACTION}, success={type=success}} }`;

  // // Run the test
  // testJSONRepair(malformedJSON);
};

main().catch((error) => {
  console.error(`Error in script: ${error.message}`);
});
