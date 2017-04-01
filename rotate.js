const svgpath = require('svgpath');

const lineReader = require('readline').createInterface({
  input: require('fs').createReadStream('/dev/stdin')
});

lineReader.on('line', function (line) {
  if (line.indexOf('<svg') >= 0) {
    const width = line.match(/width="([^"]*)"/)[1] - 0;
    const height = line.match(/height="([^"]*)"/)[1] - 0;
    const center = {x: width / 2, y: height / 2};

    line = line + `\n<g transform="rotate(180 ${center.x} ${center.y})">`;
  } else if (line.indexOf('</svg>') >= 0) {
    line = '</g>\n' + line;
  }
  console.log(line);
});