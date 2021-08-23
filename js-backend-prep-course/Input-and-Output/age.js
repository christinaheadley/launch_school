// Write a program named age.js that includes someone's age and then calculates and reports the future age in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

// Copy Code
// You are 20 years old.
// In 10 years, you will be 30 years old.
// In 20 years, you will be 40 years old.
// In 30 years, you will be 50 years old.
// In 40 years, you will be 60 years old.

// let age = 20;
let rlSync = require("readline-sync");
let age = Number(rlSync.question("How old are you?"));
console.log(`You are ${age}.`);
console.log(`In 10 years, you will be ${age + 10} years old.`);
// > {
//   ...   let foo = 'bar';
//   ... }
//   undefined
//   >
//   > console.log(foo);
//   Uncaught ReferenceError: foo is not defined
//   scope of foo is limited to inside block
