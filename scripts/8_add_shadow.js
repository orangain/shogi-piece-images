const svgpath = require('svgpath');

const lineReader = require('readline').createInterface({
  input: require('fs').createReadStream('/dev/stdin')
});

const dx = 5;
const dy = 5;

lineReader.on('line', function (line) {
  if (line.indexOf('<svg') >= 0) {
    line = line.replace(/width="([^"]*)"/, (match, w) => {
      return `width="${(w - 0) + dx * 2}"`;
    });
    line = line.replace(/height="([^"]*)"/, (match, h) => {
      return `height="${(h - 0) + dy * 2}"`;
    });
  } else if (line.indexOf('-->') >= 0) {
    line = line + `\n<filter id="drop-shadow">
    <feGaussianBlur in="SourceAlpha" result="blur" stdDeviation="2" />
    <feOffset result="offsetBlur" dx="2" dy="2" />
    <feBlend in="SourceGraphic" in2="offsetBlur" mode="normal" />
</filter>
<g filter="url(#drop-shadow)" transform="translate(${dx} ${dy})">`;
  } else if (line.indexOf('</svg>') >= 0) {
    line = '</g>\n' + line;
  }
  console.log(line);
});