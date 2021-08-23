# Write a loop that prints numbers 1-5 and whether the number is even or odd. Use the code below to get started.

# count = 1
# loop do
#   count.odd? ? (puts "#{count} is odd!") : (puts "#{count} is even!")
#   count += 1
#   break if count > 5
# end

# loop do
#   number = rand(100)
#   number <= 10 ? break : (puts number) 
# end

# A: loop do
#   number = rand(100)
#   puts number

#   if number.between?(0, 10)
#     break
#   end
# end

# Write an if/else statement that executes some code if the process_the_loop variable is true and some other code when process_the_loop is false. Specifically:

# When process_the_loop is true, execute a loop that iterates exactly once and prints The loop was processed during that iteration.
# When process_the_loop is false, just print The loop wasn't processed!.
# Use the following code to initialize process_the_loop. It will randomly assign the variable to either true or false.


# process_the_loop = [true, false].sample

# if process_the_loop
#   1.times do
#     print "The loop was processed during that iteration."
#   end
# else
#   print "print The loop wasn't processed!"
# end

# The code below asks the user "What does 2 + 2 equal?" and uses #gets to retrieve the user's answer. Modify the code so "That's correct!" is printed and the loop stops when the user's answer equals 4. Print "Wrong answer. Try again!" if the user's answer doesn't equal 4.

# loop do
#   puts 'What does 2 + 2 equal?'
#   answer = gets.chomp.to_i
#   if answer == 4
#     print "That's correct!"
#     break
#   else
#     print "Wrong answer. Try again!"
#   end
# end

# numbers = []

# loop do
#   puts 'Enter any number:'
#   input = gets.chomp.to_i
#   numbers << input
#   break if numbers.length == 5
# end
# print numbers

# Given the array below, use loop to remove and print each name. Stop the loop once names doesn't contain any more elements.
# names = ['Sally', 'Joe', 'Lisa', 'Henry']
# loop do
#   puts names.pop 
#   break if names.length <= 0
#   # OR names.empty?
# end

# The method below counts from 0 to 4. Modify the block so that it prints the current number and stops iterating when the current number equals 2.

# index = 0
# 5.times do |index|
#   puts index
#   # index += 1 -------this makes code stop at 1 instead of 2
#   break if index == 2
# end

# Using next, modify the code below so that it only prints even numbers.

# number = 0

# until number == 10
#   number += 1
#   next if number.odd?
#   puts number
# end

# The following code increments number_a and number_b by either 0 or 1. loop is used so that the variables can be incremented more than once, however, break stops the loop after the first iteration. Use next to modify the code so that the loop iterates until either number_a or number_b equals 5. Print "5 was reached!" before breaking out of the loop.

# number_a = 0
# number_b = 0

# loop do
#   number_a += rand(2)
#   number_b += rand(2)
#   next if number_a < 5 || number_b < 5
#   p number_a
#   p number_b
#   p "5 was reached!"
#   break
# end
# Given the code below, use a while loop to print "Hello!" twice.

# def greeting
#   puts 'Hello!'
# end

# number_of_greetings = 2
# while number_of_greetings > 0
#   greeting
#   number_of_greetings -= 1
# end