// Write a function that computes and returns the factorial of a number by using a for loop. The factorial of a positive integer n, signified by n!, is defined as the product of all integers between 1 and n, inclusive:

// n!	Expansion	Result
// 1!	1	1
// 2!	1 * 2	2
// 3!	1 * 2 * 3	6
// 4!	1 * 2 * 3 * 4	24
// 5!	1 * 2 * 3 * 4 * 5	120
// Use a loop of some kind to solve this. Don't use recursion; we'll do that later.

// You may assume that the argument is always a positive integer.
// function factorial(number) {
//   let result = 1;
//   for (let counter = number; counter > 0; counter -= 1) {
//     result *= counter;
//   }
//   return result;
// }

// console.log(factorial(1)); // => 1
// console.log(factorial(2)); // => 2
// console.log(factorial(3)); // => 6
// console.log(factorial(4)); // => 24
// console.log(factorial(5)); // => 120
// console.log(factorial(6)); // => 720
// console.log(factorial(7)); // => 5040
// console.log(factorial(8)); // => 40320

// 3. counter never is true
// 4. Does the following code produce an error? Why or why not? What output does this code send to the console?

// for (let i = 0; i < 5; ) {
//   console.log((i += 1));
// }
// no error bc third condition of for loop is in execution
// LS answer: The code doesn't produce an error since all 3 components of the for loop are optional. In this code, we omit the "next value" component; however, this isn't a problem here since we increment the loop variable on line 2.
// logs 1 - 5 (not zero) bc although i is 0 on the first iteration, the loop logs 1 during that iteration since i += 1 increments i before console.log gets to log anything
// 5. The following code uses a randomNumberBetween function to generate a number between its first and second arguments. It uses a while loop to try to generate a number greater than 2. Refactor the code so that you don't need to call randomNumberBetween from two different locations, lines 6 and 10. Do not change the arguments you pass to randomNumberBetween.

// my solution no good bc only runs once
// function randomNumberBetween(min, max) {
//   return Math.floor(Math.random() * (max - min + 1) + min);
// }

// let tries = 0;
// let result = randomNumberBetween(1, 6);
// tries += 1;

// for (let tries = 0; tries++; ) {
//   while (result <= 2) {
//     result = randomNumberBetween(1, 6);
//     tries += 1;
//   }
// }
// console.log("It took " + String(tries) + " tries to get a number greater than 2");
// LS solution: do/ while ensures code runs at least once
// function randomNumberBetween(min, max) {
//   return Math.floor(Math.random() * (max - min + 1) + min);
// }

// let tries = 0;
// let result;

// do {
//   result = randomNumberBetween(1, 6);
//   tries += 1;
// } while (result <= 2);

// console.log("It took " + String(tries) + " tries to get a number greater than 2");

// Reimplement the factorial function from exercise 2 using recursion. Once again, you may assume that the argument is always a positive integer.
// function fibonacci(number) {
//   if (number < 2) return number; // 0 if number is 0, 1 if number is 1
//   return fibonacci(number - 1) + fibonacci(number - 2);
// }
// LS solution: function factorial(number) {
//   if (number === 1) {
//     return 1;
//   }

//   return number * factorial(number - 1);
// }

console.log(factorial(1)); // => 1
console.log(factorial(2)); // => 2
console.log(factorial(3)); // => 6
console.log(factorial(4)); // => 24
console.log(factorial(5)); // => 120
console.log(factorial(6)); // => 720
console.log(factorial(7)); // => 5040
console.log(factorial(8)); // => 40320
