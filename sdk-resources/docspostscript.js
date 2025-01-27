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

const renameFileToIndices = function (filePath) {
    // Determine the new file path by changing the file's name to 'indices'
    let dirPath = path.dirname(filePath); // Gets the directory path of the current file

    const newFilePath = path.join(dirPath, "indices.md"); // Constructs the full target path

    // Rename the file
    fs.renameSync(filePath, newFilePath);
    console.log(`Renamed: ${filePath} to ${newFilePath}`);
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

        if (madeChange) {
            fs.writeFileSync(file, rawDataArra.join("\n"));
        }
    }
}

let myArray = [];
getAllFiles(process.argv[2], myArray);
fixFiles(myArray)