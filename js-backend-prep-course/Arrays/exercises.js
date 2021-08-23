// 1. In the following code, what are the final length values for array1, array2, array3, array4, and array5?

let array1 = [1, 2, undefined, 4];

let array2 = [1];
array2.length = 5; //[ 1, <4 empty items> ]

let array3 = [];
array3[-1] = [1]; //[ '-1': [ 1 ] ]

let array4 = [1, 2, 3, 4, 5];
array4.length = 3; //[ 1, 2, 3 ]

let array5 = [];
array5[100] = 3; //[ <100 empty items>, 3 ]

// Log all of the even values from myArray to the console.

// mine:
// let myArray = [1, 3, 6, 11, 4, 2, 4, 9, 17, 16, 0];
// let result = myArray.filter((n) => n % 2 === 0);
// console.log(result);

// LS answer:
// for (let i = 0; i < myArray.length; i += 1) {
//   let value = myArray[i];
//   if (value % 2 === 0) {
//     console.log(value);
//   }
// }
// or
// myArray.forEach(function(value) {
//   if (value % 2 === 0) {
//     console.log(value);
//   }
// });
// 3. Let's make the problem a little harder. In this problem, we're again interested in even numbers, but this time the numbers are in nested arrays in a single outer array.

// let myArray = [
//   [1, 3, 6, 11],
//   [4, 2, 4],
//   [9, 17, 16, 0],
// ];
// let result = myArray.flat().filter((n) => n % 2 === 0);
// console.log(result);

// 4. Use the map function to create a new array that contains one element for each element in the original array. If the element is an even value, then the corresponding element in the new array should contain the string 'even'; otherwise, the element in the new array should contain 'odd'.
// mine (doesnt work)
// let myArray = [1, 3, 6, 11, 4, 2, 4, 9, 17, 16, 0];

// let words = myArray.map((n) => n % 2 === 0) ? "even" : "odd";
// console.log(words);

// for (let index = 0; index < myArray.length; index++) {
//   let words = myArray[index] % 2 === 0 ? "even" : "odd";
//   console.log(words);
// }
// [
//   'odd', 'odd', 'even', 'odd',
//   'even', 'even', 'even', 'odd',
//   'odd', 'even', 'even',
// ]
// LS:
// let newArray = myArray.map(function(value) {
//   if (value % 2 === 0) {
//     return 'even';
//   } else {
//     return 'odd';
//   }
// });
// With a For Loop

// let newArray = [];
// for (let i = 0; i < myArray.length; i += 1) {
//   let value = myArray[i];
//   if (value % 2 === 0) {
//     newArray.push('even');
//   } else {
//     newArray.push('odd');
//   }
// }
// Write a findIntegers function that takes an array argument and returns an array that contains only the integers from the input array. Use the filter method in your function.
// You can use Number.isInteger(value) to determine whether a numeric value is an integer. It returns true if the value is an integer, false otherwise.

let things = [1, "a", "1", 3, NaN, 3.1415, -4, null, false];
let integers = findIntegers(things);
function findIntegers(array) {
  return array.filter(function (element) {
    return Number.isInteger(element);
  });
}
// function findIntegers(things) {
//   things.filter((thing) => Number.isInteger(thing));
//   return things;
// }
console.log(integers); // => [1, 3, -4]

// console.log(things);

// things.forEach((thing) => {
//   Number.isInteger(thing);
// });
