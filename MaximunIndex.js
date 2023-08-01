'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function (inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function () {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}

function maxIndex(steps, badIndex) {
    let max_index = 0;
    for (let i = 1; i <= steps; i++) {
        max_index += i;
    }
    let current_index = max_index, step = steps;
    while (1) {
        while (current_index > 0 && steps > 0) {
            current_index -= steps;
            if (current_index == badIndex) {
                current_index += steps;
            }
            steps--;
        }
        if (current_index <= 0) {
            return max_index;
        }
        else {
            steps = step;
            current_index = max_index - 1;
            max_index--;
            if (current_index == badIndex) {
                current_index = max_index - 1;
                max_index--;
            }
        }
    }
}



function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const steps = parseInt(readLine().trim(), 10);

    const badIndex = parseInt(readLine().trim(), 10);

    const result = maxIndex(steps, badIndex);

    ws.write(result + '\n');

    ws.end();
}
