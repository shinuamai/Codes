'use strict';

const fs = require('fs');

process.stdin.resume();
process.stdin.setEncoding('utf-8');

let inputString = '';
let currentLine = 0;

process.stdin.on('data', function(inputStdin) {
    inputString += inputStdin;
});

process.stdin.on('end', function() {
    inputString = inputString.split('\n');

    main();
});

function readLine() {
    return inputString[currentLine++];
}



/*
 * Complete the 'countMinimumOperations' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts STRING password as parameter.
 */

function countMinimumOperations(password) {
    let vowelCount = 0;
    let consonantCount = 0;
  
    for (let char of password) {
      if (isVowel(char)) {
        vowelCount++;
      } else {
        consonantCount++;
      }
    }
  
    if (vowelCount === consonantCount) {
      return 0;
    }
  
    if (vowelCount > consonantCount) {
      // Buscamos una vocal para decrementar (excepto 'a')
      for (let i = 0; i < password.length; i++) {
        if (isVowel(password[i]) && password[i] !== 'a') {
          return 1; 
        }
      }
    } else {
      // Buscamos una consonante para incrementar (excepto 'z')
      for (let i = 0; i < password.length; i++) {
        if (!isVowel(password[i]) && password[i] !== 'z') {
          return 1; 
        }
      }
    }
  
    return 2; 
  }

function main() {
    const ws = fs.createWriteStream(process.env.OUTPUT_PATH);

    const password = readLine();

    const result = countMinimumOperations(password);

    ws.write(result + '\n');

    ws.end();
}
