function first() {
  console.log("first function");
}

function second() {
  first();
  console.log("second function");
}

second();
console.log("main function");

function firstThing() {
  return "first thiING";
}

function secondThing() {
  return firstThing() + "second thinG!";
}

secondThing();
