// Modify the age.js program you wrote in the exercises for the Input/Output chapter. The updated code should use a for loop to display the future ages.
// Write a program named age.js that includes someone's age and then calculates and reports the future age in 10, 20, 30 and 40 years. Below is the output for someone 20 years old.

let rlSync = require("readline-sync");
let age = Number(rlSync.question("How old are you?"));
console.log(`You are ${age}.`);
for (let index = 10; index <= 40; index += 10) {
  console.log(`In ${index} years, you will be ${age + index} years old.`);
}
