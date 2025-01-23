const fs = require('fs');
const path = require('path');

// Function to move files from 'docs' to 'Methods'
const moveFiles = function (srcDir, destDir) {
  // Check if source and destination directories exist
  if (!fs.existsSync(srcDir)) {
    console.log(`Source directory not found: ${srcDir}`);
    return;
  }
  if (!fs.existsSync(destDir)) {
    console.log(`Destination directory not found: ${destDir}`);
    return;
  }

  // Read all files and directories in the source directory
  const files = fs.readdirSync(srcDir);

  files.forEach(function (file) {
    const currentPath = path.join(srcDir, file);
    const destPath = path.join(destDir, file);

    if (fs.statSync(currentPath).isDirectory()) {
      // If it's a directory, recursively move its contents
      moveFiles(currentPath, destPath);
    } else {
      // If it's a file, move it
      fs.renameSync(currentPath, destPath);
    }
  });
};

// Move files from 'docs' to 'Methods'
moveFiles(process.argv[2], process.argv[3]);