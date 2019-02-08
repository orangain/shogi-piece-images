const path = require('path');
const fs = require('fs');

const DataURI = require('datauri');

const IMAGES_DIR = 'dist';

exports.getImagesSync = function () {
  const images = {};
  const dir = path.resolve(__dirname, IMAGES_DIR);
  listSVGFilesSync(dir).forEach(filepath => {
    const id = path.basename(filepath, path.extname(filepath));
    images[id] = DataURI.sync(filepath);
  });

  return images;
}

function listSVGFilesSync(directory) {
  return fs.readdirSync(directory)
    .filter(name => name.endsWith('.svg'))
    .map(name => path.resolve(directory, name));
} 