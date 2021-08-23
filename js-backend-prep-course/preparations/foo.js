let foo = "bar";
console.log(foo);
foo;

REPL: > let foo = "bar";
undefined
> console.log(foo);
bar
undefined
> foo;
'bar'

Chome:
> let foo = "bar";
undefined
> console.log(foo);
bar
undefined
> foo;
'bar'
VM61:1 Uncaught SyntaxError: Unexpected token '>'

//#5 Identify the Constructors for each of the following methods and classify each method as either a "Static" or a "Prototype" method:

substring Prototype (string)
create static? (object)
fromCharCode static (string)
slice prototype array & string
toString prototype (number, array, string, boolean, object)
It might be that more than one constructor provides a method with a given name.Make sure you list them all in your answer. You can limit your search for methods to the String, Object, Array, and Number constructors.

#6 Which of the following names satisfy the style guidelines for variable names? For the purposes of this question, constants are not variables.

Name
ok index
CatName
snake_case
ok lazyDog
quick_Fox
1stCharacter
ok operand2
no BIG_NUMBER

#7
Which of the following names satisfy the style guidelines for function names?

Name
ok index
sometimes CatName
snake_case
ok lazyDog
quick_Fox
1stCharacter
ok operand2
no BIG_NUMBER

#8
Which of the following names satisfy the style guidelines for constants?

Name
index
CatName
snake_case
lazyDog
quick_Fox
1stCharacter
operand2
BIG_NUMBER
Solution
Acceptable names: BIG_NUMBER, CatName.

#9 Which of the following names don't satisfy the style guidelines for naming variables, functions, or constants?

Name
index
CatName
-- snake_case
lazyDog
-- quick_Fox
-- 1stCharacter
operand2
BIG_NUMBER