const fs = require('fs');

const input = fs.readFileSync('/dev/stdin', 'utf8');

let scale;
let output = input.replace(/width="([\d.]+)"\s*height="([\d.]+)"/, (match, p1, p2) => {
    const width = parseFloat(p1);
    const height = parseFloat(p2);
    const targetHeight = 50;
    scale = targetHeight / height;
    return `width="${width * scale}" height="${targetHeight}"`;
});

output = output.replace('</metadata>', `</metadata>\n<g transform="scale(${scale},${scale})">`);

output = output.replace('</svg>', '</g>\n</svg>');

console.log(output);