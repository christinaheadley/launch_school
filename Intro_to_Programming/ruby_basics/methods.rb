# Write a method named print_me that prints I'm printing within the method! when invoked as follows:

# def print_me
#   puts "I'm printing within the method!"
# end
# print_me

# e a method named print_me so that I'm printing the return value! is printed when running the following code:
# def print_me
#   "I'm printing the return value!"
# end
# puts print_me

# Write two methods, one that returns the string "Hello" and one that returns the string "World". Then print both strings using #puts, combining them into one sentence.
# def hello
#   "Hello"
# end
# def world
#   "World"
# end
# puts "#{hello} #{world}"
# # Hello World

# def hello
#   'Hello'
# end

# def world
#   'World'
# end
# # When greet is invoked with #puts, it should output the following:
# # Hello World
# def greet
#   "#{hello} #{world}"
#   A: hello + ' ' + world
# end
# puts greet

# Using the following code, write a method called car that takes two arguments and prints a string containing the values of both arguments.
# def car(a, b)
#   puts a + " " + b
# end
# car('Toyota', 'Corolla')
# Expected output:
# Toyota Corolla

# Day or Night?
# The variable below will be randomly assigned as true or false. Write a method named time_of_day that, given a boolean as an argument, prints "It's daytime!" if the boolean is true and "It's nighttime!" if it's false. Pass daylight into the method as the argument to determine whether it's day or night.

# daylight = [true, false].sample
# def time_of_day(boolean)
#   boolean ? (puts "It's daytime!") : (puts "It's nightime!")
# end
# time_of_day(daylight)
# Run the code as it is shown below, and take notice of any error messages.

# def dog(name)
#   # return name
#   puts "The dog's name is #{name}."
# end

# def cat(name)
#   puts "The cat's name is #{name}."
#   # return name
# end

# dog("Spot")
# cat("Ginger")
# Based on what the error messages are telling you, update the relevant method definitions and method invocations as necessary so that the names are printed as shown below.

# Expected output:
# The dog's name is Spot.
# The cat's name is Ginger.
# A: 
# def dog(name)
#   return name
# end

# def cat(name)
#   return name
# end

# puts "The dog's name is #{dog('Spot')}."
# puts "The cat's name is #{cat('Ginger')}."
# Write a method that accepts one argument, but doesn't require it. The parameter should default to the string "Bob" if no argument is given. The method's return value should be the value of the argument.
# def assign_name(name="Bob")
#   name
# end
# puts assign_name('Kevin') == 'Kevin'
# puts assign_name == 'Bob'
# The code should output true twice.

# Write the following methods so that each output is true.
# def add(a, b)
#   a + b
# end
# def multiply(a, b)
#   a * b
# end
# puts add(2, 2) == 4
# puts add(5, 4) == 9
# puts multiply(add(2, 2), add(5, 4)) == 36

# The variables below are both assigned to arrays. The first one, names, contains a list of names. The second one, activities, contains a list of activities. Write the methods name and activity so that they each take the appropriate array and return a random value from it. Then write the method sentence that combines both values into a sentence and returns it from the method.

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']
def name(names)
  names.sample
end
def activity(activities)
  activities.sample
end
def sentence(name, activity)
  "#{name} went out #{activity} today!"

end
puts sentence(name(names), activity(activities))
# Example output:
# George went walking today!
