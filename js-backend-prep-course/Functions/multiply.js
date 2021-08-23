// function multiply(a, b) {
//   let rlSync = require("readline-sync");
//   a = rlSync.question("Enter a number");
//   b = rlSync.question("Enter a second number");
//   return `${a} times ${b} equals ${a * b}`;
// }
// console.log(multiply());

//  OR

function multiply(nums) {
  let rlSync = require("readline-sync");
  let sum = rlSync.question(nums);
  return sum;
}
let a = multiply("Enter a number");
let b = multiply("Enter a second number");
console.log(`${a} times ${b} equals ${a * b}`);

// Write a program that uses a multiply function to multiply two numbers and returns the result. Ask the user to enter the two numbers, then output the numbers and result as a simple equation.

// $ node multiply.js
// Enter the first number: 3.141592653589793
// Enter the second number: 2.718281828459045
// 3.141592653589793 * 2.718281828459045 = 8.539734222673566

// LS answer:
// function multiply(left, right) {
//   return left * right;
// }

// function getNumber(prompt) {
//   let readlineSync = require('readline-sync');
//   return parseFloat(readlineSync.question(prompt));
// }

// let left = getNumber('Enter the first number: ');
// let right = getNumber('Enter the second number: ');
// console.log(`${left} * ${right} = ${multiply(left, right)}`);
