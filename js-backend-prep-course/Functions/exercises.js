// 1. What does this code log to the console? Does executing the foo function affect the output? Why or why not?

// let bar = 1;
// function foo() {
//   let bar = 2;
// }

// foo();
// console.log(bar);
// // A: 1. No. Scope is separate.

// What does the following code log to the console?

// Copy Code
// function scream(words) {
//   words = words + '!!!!';
//   return;
//   console.log(words);
// }

// scream('Yipeee');
// Solution
// It doesn't log anything. The return on line 3 terminates the function before it can log anything.
// What does the following code log to the console?
function scream(words) {
  return words + "!!!!";
}

scream("Yipeee");
This program also doesn't log anything. The function returns a value, Yipeee!!!!, but it doesn't do anything with it. In particular, it doesn't write it to the console.
