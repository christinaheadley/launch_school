// https://launchschool.com/books/javascript/read/flow_control

false || (true && false);
false;
true || 1 + 2;
true;
1 + 2 || true; //When using && and ||, the return value is always the value of the operand evaluated last
3;
true && 1 + 2;
3;
false && 1 + 2;
false;
1 + 2 && true;
true;
32 * 4 >= 129;
false;
false !== !true;
false;
true === 4;
false;
false === (847 === "847");
true;
false === (847 == "847");
false;
!true || !(100 / 5) === 20 || 328 / 4 === 82 || false;
!true || false || true || false;
true;

// Write a function, evenOrOdd, that determines whether its argument is an even number. If it is, the function should log 'even' to the console; otherwise, it should log 'odd'. For now, assume that the argument is always an integer.

// function evenOrOdd(integer) {
//   if (integer % 2 === 0) {
//     console.log("even");
//   } else {
//     console.log("odd");
//   }
// }
// function evenOrOdd(integer) {
//   integer % 2 === 0 ? console.log("even") : console.log("odd");
// }

// Let's improve our previous implementation of evenOrOdd. Add a validation check to ensure that the argument is an integer. If it isn't, the function should issue an error message and return.
// function evenOrOdd(integer) {
//   if (!Number.isInteger(integer)) {
//     console.log("Please enter an integer.");
//     return;
//   } else if (integer % 2 === 0) {
//     console.log("even");
//   } else {
//     console.log("odd");
//   }
// }
// evenOrOdd("a");
// evenOrOdd(6);
// evenOrOdd(7);

// LS solution:
// function evenOrOdd(number) {
//   if (!Number.isInteger(number)) {
//     console.log('Sorry, the value you passed is not an integer');
//     return;
//   }

//   if (number % 2 === 0) {
//     console.log('even');
//   } else {
//     console.log('odd');
//   }
// }
// Refactor this statement to use an if statement instead.

// return foo() ? "bar" : qux();

// if (f
// function isArrayEmpty(arr) {
//   if (arr) {
//     console.log("Not Empty");
//   } else {
//     console.log("Empty");
//   }
// }
// isArrayEmpty([]);
// Write a function that takes a string as an argument and returns an all-caps version of the string when the string is longer than 10 characters. Otherwise, it should return the original string. Example: change 'hello world' to 'HELLO WORLD', but don't change 'goodbye'.

// function caps(string) {
//   if (string.length > 10) {
//     console.log(string.toUpperCase());
//   } else {
//     console.log(string);
//   }
// }
// OR
// function capsLong(string) {
//   return ((string.length > 10) ? string.toUpperCase() : string);
// }

// caps("goodbye");
// caps("hello world");
// LS solution:
// function capsLong(string) {
//   if (string.length > 10) {
//     return string.toUpperCase();
//   } else {
//     return string;
//   }
// }

// console.log(capsLong("Sue Smith"));     // => Sue Smith
// console.log(capsLong("Sue Robertson")); // => SUE ROBERTSON
// console.log(capsLong("Joe Thomas"));    // => Joe Thomas
// console.log(capsLong("Joe Stevens"));   // => JOE STEVENS

// Write a function that logs whether a number is between 0 and 50 (inclusive), between 51 and 100 (inclusive), greater than 100, or less than 0.

function numberRange(num) {
  if (num < 0) {
    console.log(`${num} is less than 0`);
  } else if (num <= 50) {
    console.log(`${num} is between 0 and 50`);
  } else if (num <= 100) {
    console.log(`${num} is between 51 and 100`);
  } else {
    console.log(`${num} is greater than 100`);
  }
}
numberRange(25);
numberRange(75);
numberRange(125);
numberRange(-25);

// Expected Output:
// 25 is between 0 and 50
// 75 is between 51 and 100
// 125 is greater than 100
// -25 is less than 0
