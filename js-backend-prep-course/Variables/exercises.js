// const NAME = "Victor";
// console.log("Good Morning, " + NAME);
// console.log("Good Afternoon, " + NAME);
// console.log("Good Evening, " + NAME);

// NAME = "Joe";
// console.log("Good Morning, " + NAME);
// console.log("Good Afternoon, " + NAME);
// console.log("Good Evening, " + NAME);
// NAME = "Joe";
//      ^

// TypeError: Assignment to constant variable.
// let foo = "bar";
// {
//   let foo = "qux";
// }

// console.log(foo);
// logs bar bc foo in block has separate scope
const FOO = "bar";
{
  const FOO = "qux";
}
console.log(FOO);
logs bar bc of scope -- also, no error message bc second FOO is a separate scope
