const fs = require("fs");
const path = require("path");

// Function to recursively remove a folder and all its contents
const removeFolder = function (dirPath) {
  // Check if the directory exists before proceeding
  if (!fs.existsSync(dirPath)) {
    console.log(`Directory not found: ${dirPath}`);
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

removeFolder(process.argv[2]);
