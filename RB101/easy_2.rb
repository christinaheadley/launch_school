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

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip?"
tip = (gets.to_f * bill * 0.01).round(2)
total = (bill + tip).round(2)

puts "The tip is #{tip}"
puts "The total is #{total}"