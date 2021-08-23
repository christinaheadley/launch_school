# first_name = "Christina"
# last_name = "Headley"
# puts "#{first_name} #{last_name}"

# Use the modulo operator, division, or a combination of both to take a 4 digit number and find the digit in the: 1) thousands place 2) hundreds place 3) tens place 4) ones place

# puts 1234 / 1000 #thousands
# puts 1234 % 1000 / 100
# puts 1234 % 100 / 10
# puts 1234 % 10

# Write a program that uses a hash to store a list of movie titles with the year they came out. Then use the puts command to make your program print out the year of each movie to the screen.
# movies = {
#   "Star Wars" => 1976,
#   "Over the Moon" => 2000, 
#   "Moonstruck" => 1990
# }
# movies.each_value { |v| puts v }
# 4 Use the dates from the previous example and store them in an array. Then make your program output the same thing as exercise 3.
# years = [1976, 2000, 1990]
# years.each { |year| puts year}
# 5 Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.
# def factorial(num)
#   (1..num).reduce(:*)
# end
# puts factorial(5)
# 6 Write a program that calculates the squares of 3 float numbers of your choosing and outputs the result to the screen.
# def square(float)
#   puts float ** 2
# end
# square(1.2)
# square(3.8)
# square(99.1)
arr = [1, 2, 3]

for i in arr do
  a = 5      # a is initialized here
end

puts a       # is it accessible here?~
