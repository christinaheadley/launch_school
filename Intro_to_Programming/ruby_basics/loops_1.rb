# 1. Modify the code so the loop stops after the first iteration.

# loop do
#   puts 'Just keep printing...'
#   break       #new line
# end

# 2. The code below is an example of a nested loop. Both loops currently loop infinitely. Modify the code so each loop stops after the first iteration.

# loop do
#   puts 'This is the outer loop.'

#   loop do
#     puts 'This is the inner loop.'
#     break #new line
#   end
#   break #new line
# end

# puts 'This is outside all loops.'

# 3. Modify the following loop so it iterates 5 times instead of just once.

# iterations = 1

# while iterations <= 5
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
# end

# A: loop do
#   puts "Number of iterations = #{iterations}"
#   iterations += 1
#   break if iterations > 5
# end

# loop do
#   puts 'Should I stop looping?'
#   answer = gets.chomp
#   break if answer == "yes"
# end

# say_hello = true

# # while say_hello
#   5.times do
#     puts 'Hello!'
#   end
#   # say_hello = false
#   # end
# 5.times do
#   puts 'Hello!'
# end

# Using a while loop, print 5 random numbers between 0 and 99. The code below shows an example of how to begin solving this exercise.

  # numbers = []
# count = 0
# while count < 5
#   puts rand(99)
#   count += 1
# end

# 5.times do
#   puts rand(0..99)
# end
# A: numbers = []

# while numbers.size < 5
#   numbers << rand(100)
# end

# count = 1

# until count > 10
#   puts count
#   count += 1
# end
# Given the array of several numbers below, use an until loop to print each number.
# numbers = [7, 9, 13, 25, 18]

# until numbers.length <= 0
#   puts numbers.pop
# end

# A: count = 0

# until count == numbers.size
#   puts numbers[count]
#   count += 1
# end

# The code below shows an example of a for loop. Modify the code so that it only outputs i if i is an odd number.

# for i in 1..100
#   puts i if i % 2 != 0 
# end

# A: for i in 1..100
#   puts i if i.odd?
# end

# Your friends just showed up! Given the following array of names, use a for loop to greet each friend individually.
# Expected output:
# Hello, Sarah!
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for friend in friends
  puts "Hello, #{friend}!"
end