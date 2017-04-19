const svgpath = require('svgpath');

const lineReader = require('readline').createInterface({
  input: require('fs').createReadStream('/dev/stdin')
});

lineReader.on('line', function (line) {
  if (line.indexOf('<path') >= 0 && line.indexOf('fill="#FEEC99"') < 0) {
    line = line.replace(/d="([^"]*)"/, (match, draw) => {
      return `d="${removeEdge(draw)}"`;
    });
    //process.exit();
  }
  console.log(line);
});

function removeEdge(draw) {
  const path = svgpath(draw).abs().round(3);

  let preservedSegments = [];
  let currentCloseSegments = [];
  path.segments.forEach(segment => {
    const action = segment[0];

    if (action === 'Z') {
      if (!currentCloseSegments.every(isEdge)) {
        currentCloseSegments.push(segment);
        preservedSegments = preservedSegments.concat(currentCloseSegments);
      }
      currentCloseSegments = [];
    } else {
      currentCloseSegments.push(segment);
    }
  })

  path.segments = preservedSegments;
  return path.toString();
}

const topLeft = {x: 8, y: 6};
const topCenter = {x: 21, y: 2};
const topRight = {x: 33, y: 6};
const bottomLeft = {x: 3, y: 45};
const bottomRight = {x: 38, y: 45};

const isLeftEdge = (x, y) => (y - bottomLeft.y) < (topLeft.y - bottomLeft.y) / (topLeft.x - bottomLeft.x) * (x - bottomLeft.x);
const isLeftTopEdge = (x, y) => (y - topLeft.y) < (topCenter.y - topLeft.y) / (topCenter.x - topLeft.x) * (x - topLeft.x);
const isRightTopEdge = (x, y) => (y - topRight.y) < (topCenter.y - topRight.y) / (topCenter.x - topRight.x) * (x - topRight.x);
const isRightEdge = (x, y) => (y - topRight.y) < (bottomRight.y - topRight.y) / (bottomRight.x - topRight.x) * (x - topRight.x);

function isEdge(segment) {
  const x = segment[1];
  const y = segment[2];

  return y >= bottomLeft.y || isLeftEdge(x, y) || isLeftTopEdge(x, y) || isRightTopEdge(x, y) || isRightEdge(x, y);
}