
Exception handling is a specific process that deals with errors in a manageable and predictable way. The main thing we want to make you aware of at this point, is how exception handling works and what it looks like. The reserved word rescue will show up a lot in your Ruby career so it's better to know what it is sooner than later.

When your programs are interacting with the real world, there is a large amount of unpredictability. If a user enters bad information or a file-manipulating process gets corrupted, your program needs to know what to do when it runs into these exceptional conditions.

Ruby has an Exception class that makes handling these errors much easier. It also has a syntactic structure using the reserved words begin, rescue, and end to signify exception handling. The basic structure looks like this.

Copy Code
# exception_example.rb

begin
  # perform some dangerous operation
rescue
  # do this if operation fails
  # for example, log the error
end
Often, it is necessary to use exception handling when your program is interacting with the outside world, or anything that can behave in an unpredictable manner. One common occurrence of this is when a nil value makes its way into our program. We have to be prepared for this reality. Look at the following code and run it to test it out.

Copy Code
# exception_example.rb

names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "#{name}'s name has #{name.length} letters in it."
  rescue
    puts "Something went wrong!"
  end
end
We've used a begin/rescue/end block to handle any exceptions that may happen within our block. In this example, we have a nil value in our array. Therefore, when we go to call .length on nil we get an error. When an exception, or error, is raised, the rescue block will execute and then the program will continue to run as it normally would. If we didn't have the rescue block there, our program would stop once it hit the exception and we would lose the rest of our print-out.

You can also use the rescue reserved word in-line like so:

Copy Code
# inline_exception_example.rb

zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that!"
puts "After each call"
This code prints the following output:

Copy Code
Before each call
Can't do that!
After each call
It does so because it isn't possible to call the each method on an Integer which is the value of the zero variable. If we remove the rescue block, the second puts method will not execute because the program will exit when it runs into the error. You can see why the word "rescue" is relevant here. We are effectively rescuing our program from coming to a grinding halt. If we give this same code the proper variable, our rescue block never gets executed.

We can also rescue pre-existing errors when we are writing our code. Let's look at doing something like that with a divide method.

Copy Code
# divide.rb

def divide(number, divisor)
  begin
    answer = number / divisor
  rescue ZeroDivisionError => e
    puts e.message
  end
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
Here we are rescuing the ZeroDivisionError and saving it into a variable e. We then have access to the message method that the ZeroDivisionError object has available.

If this is confusing at this point, don't worry. As you learn more about classes and objects in the coming chapters, you can revisit this section, and it will be much clearer. For now, you need to understand that as you write Ruby programs you can anticipate errors that you may run into and handle them properly so that your whole program isn't broken by one error.

Exceptions & Stack Traces
For the purposes of this section an exception can be viewed as synonymous with an error. During the course of program execution, many things can go wrong for a variety of reasons, and when something does go wrong, usually we say "an exception is raised". This is a common technical phrase that just means your code encountered some sort of error condition. When an exception is raised, it is usually accompanied by a large output of text of what looks like gibberish. It's in this gibberish that you'll find the clues to the source of the problem, and it's important to start developing an eye for scanning and parsing this gibberish output. This skill will end up being one of the most important things to develop over time, because if you're like most programmers, your code will generate a lot of exceptions.

Let's take a look at a simple example of an error condition:

Copy Code
irb :001 > '1' + 1
TypeError: no implicit conversion of Integer into String
In the example above, we see a TypeError because the two types don't match - one is a String, one is a Integer - and Ruby doesn't know how to add them together. In Ruby terms, an exception is raised, which will halt execution unless there is code in place to rescue the exception. Ruby has a set of built-in exceptions that also come with an attached message. In the above example, the exception is a TypeError and tells us it can't add the two together without explicitly converting one to a compatible type. Some other common built-in error types you may encounter are:

Copy Code
StandardError
TypeError
ArgumentError
NoMethodError
RuntimeError
SystemCallError
ZeroDivisionError
RegexpError
IOError
EOFError
ThreadError
ScriptError
SyntaxError
LoadError
NotImplementedError
SecurityError
This isn't a complete list and you don't need to memorize the above, but it gives a good idea of the kind of situations that might cause an exception. The TypeError in the above code example shows the first line of the error message provided by the exception, but in real exceptions, you'll often see line after line of text, and it looks like a wall of gibberish. What does the rest of the text mean? To illustrate, let's look at another example, and we'll walk through diagnosing the cause of the error using the message output from the exception.

Create a file with the following and name it greeting.rb and run it with ruby greeting.rb.

Copy Code
def greet(person)
  puts "Hello, " + person
end

greet("John")
greet(1)
The purpose/functionality of this code is simple, but maybe a quick walkthrough might still be helpful. First we define a method greet, which expects one parameter. The idea is that we can write a line of code that says.

Copy Code
greet("Jack")
And it should output:

Copy Code
Hello, Jack
When we run the script greeting.rb, we get one correct greeting, and one error as output - don't panic! We're going to take the error output line by line and understand what it means.

Copy Code
$ ruby greeting.rb
Hello, John
greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'
The first use of the greet method supplies a String as the parameter, and so the output is what you'd expect it to be. But when we pass 1 as the argument into the greet method, we get a TypeError exception. We already mentioned the first line: it's the error type and the error message. But what do the other lines mean?

Part of this involves understanding how execution works within Ruby, involving the 'stack'. When ruby invokes a method, the method is added to Ruby's 'stack'. In the simple example above when we called greet("John"), program execution would look like this:

Copy Code
main -> greet -> puts -> exit and return to main
Now we can make a little more sense of the output from the error, as it provides a detailed trace (known as a stack trace) that shows the flow of execution and where the error occurred. Such traces rely on Ruby's call stack, which we discussed in the Methods chapter.

In the second method invocation, greet(1), an error occurs and the program execution flow didn't exit back to main, and stayed in the greet method. The program execution looks like this:

Copy Code
main -> greet -> puts
Now, let's revisit the error:

Copy Code
greeting.rb:2:in `+': no implicit conversion of Integer into String (TypeError) from greeting.rb:2:in `greet'
from greeting.rb:6:in `<main>'
The stack trace first tells us where the error occurred and why: line 2 of greeting.rb, and the error was because the types don't match. The error occured due to the call made in the 'main' context on line 6, which contains the line that called the method with incorrect arguments, line 2.

This is a shorter error stack trace than most. Let's take a look at a slightly more complex example. Note: try not to worry about anything you don't understand in the code yet, just pay attention to the stack trace and how it allows you to see what called which method, and provides a trail of calls.

Copy Code
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)
Save this to greeting.rb and run it, and you should see the following output:

Copy Code
H e l l o, J o h n
greeting.rb:2:in `space_out_letters': undefined method `split' for 1:Integer (NoMethodError)
from greeting.rb:6:in `greet' from greeting.rb:10:in `decorate_greeting'
from greeting.rb:14:in `<main>'
The first example works as expected, the latter causes an exception. Ordinarily this should pass the execution flow through as following:

Copy Code
main -> decorate_greeting -> greet -> space_out_letters (passes result back) -> greet -> decorate_greeting -> main
Looking at the stack trace, you can see this happening: on line 14 (the beginning of the chain where the error originated) the decorate_greeting method is called. It then identifies line 10, where the greet method is called by decorate_greeting, and then line 6 where greet calls space_out_letters. Because the function 'split' expects a string, we get an error, along with a trace of the calls that lead up to that error. In a small script this is less useful, but in a larger codebase, being able to trace the execution flow is a very useful way to drill down to the source of the error.