# 1 Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

# Teddy is 69 years old!

# age = rand(20...200)
# puts "Teddy is #{age} years old!"
#2 Build a program that asks a user for the length and width of a room in meters and then displays the area of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# puts "Enter the length of the room in meters: "
# length = gets.chomp.to_i
# puts "Enter the width of the room in meters: "
# width = gets.chomp.to_i
# square_meters = length * width
# square_feet = square_meters * 10.7639
# puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."

# A: 
# SQMETERS_TO_SQFEET = 10.7639

# puts '==> Enter the length of the room in meters: '
# length = gets.to_f

# puts '==> Enter the width of the room in meters: '
# width = gets.to_f

# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."

# Our solution is straightforward. First we obtain the length, then we get the width. Next we perform our calculations, and then we print the results. We do no validation on our inputs, and just assume the user will enter appropriate values.

# We use a constant, SQMETERS_TO_SQFEET to store the conversion factor between square meters and square feet. This is good practice any time you have a number whose meaning is not immediately obvious upon seeing it.

# The only thing that may be unfamiliar here is the round method (a method of the Float class), which is used to round our results to the nearest 2 decimal places. (You can also use Kernel#format to format the results, but format is harder to use.)

#3. Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. The program must compute the tip and then display both the tip and the total amount of the bill.

# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

# puts "What is the bill?"
# bill = gets.to_f
# puts "What is the tip?"
# tip = (gets.to_f * bill * 0.01).round(2)
# total = (bill + tip).round(2)

# puts "The tip is #{tip}"
# puts "The total is #{total}"

# Build a program that displays when the user will retire and how many years she has to work till retirement.

# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

# puts "What is your age?"
# current_age = gets.to_i
# puts "At what age would you like to retire?"
# retirement_age = gets.to_i
# current_year = Time.now.year
# gap = retirement_age - current_age
# retirement_year = current_year + gap
# puts "It's #{current_year}. You will retire in #{retirement_year}.\nYou have only #{(retirement_age - current_age)} years of work to go!"

# puts "What is your nam

# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# (1..99).each { |n| puts n if n%2 == 1 }

# A: value = 1
# while value <= 99
#   puts value
#   value += 2
# end

# Further Exploration
# Repeat this exercise with a technique different from the one you just used, and different from the solution shown above. You may want to explore the use Integer#upto or Array#select methods, or maybe use Integer#odd?
# students A:
# # Using .each and Modulo to Identify Off Numbers
# (1..99).each {|num| puts num if num % 2 == 1 }

# # Using .each and num.odd?
# (1..99).each {|num| puts num if num.odd?}

# # Using .select and num.odd?
# (1..99).select {|num| puts num if num.odd?}

# # Using .upto and num.odd?
# puts 1.upto(99).select(&:odd?)

# (1..99).each { |n| puts n if n%2 == 0 }

#8 REDO Write a program that asks the user to enter an integer greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.
# puts "Please enter an integer greater than 0:"
# num = gets.to_i
# puts "Enter 's' to compute the sum, 'p' to compute the product."
# answer = gets.chomp

# if answer == "s"
#   total = 0
#   counter = num
#   until counter == 0
#     total = total + counter
#     counter -= 1
#     total
#   end
#   p total 
#   puts "The sum of the integers between 1 and #{num} is #{total}."
# elsif answer == "p"
#   product = 1
#   counter = num
#   until counter == 1
#     product = product * counter
#     counter -= 1
#     product
#   end
#   puts "The product of the integers between 1 and #{num} is #{product}."
# else
#   puts "Invalid."
# end

# A: 
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end

# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end

# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i

# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp

# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end

# For brevity and simplicity, our solution doesn't try too hard to validate the user input. Your own solution probably should try to validate input and issue error messages as needed.

# This solution first obtains the integer and operation to be performed from the user, then we perform the requested operation using one of two methods: compute_sum adds the numbers together, while compute_product multiplies them. Once we have the result, we just print it.

# Further Exploration
# The compute_sum and compute_product methods are simple and should be familiar. A more rubyish way of computing sums and products is with the Enumerable#inject method. #inject is a very useful method, but if you've never used it before, it can be difficult to understand.

# Take some time to read the documentation for #inject. (Note that all Enumerable methods can be used on Array.) Try to explain how it works to yourself.

# Try to use #inject in your solution to this problem.

# def product(number)
#   (1..number).inject(:*)
# end
# p product(6)

# 9 name = 'Bob'
# save_name = name
# name = 'Alice'
# puts name, save_name
# What does this code print out? Think about it for a moment before continuing.

# If you said that code printed

# Alice
# Bob
# you are 100% correct, and the answer should come as no surprise. Now, let's look at something a bit different:

# name = 'Bob'
# save_name = name
# name.upcase!
# puts name, save_name
# What does this print out? Can you explain these results?
