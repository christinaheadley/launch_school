# puts ">> What is your age in years?"
# answer = gets.chomp.to_i
# months = answer * 12
# puts "You are #{months} months old."

# puts ">> Do you want me to print something? (y/n)"
# answer = gets.chomp.downcase
# # if answer == "y" then  puts "something"
# if answer == 'y'
#   puts 'something'
# elsif answer == 'n'
# else
#   puts "Invalid input"
# end

# A: choice = nil
# loop do
#   puts '>> Do you want me to print something? (y/n)'
#   choice = gets.chomp.downcase
#   break if %w(y n).include?(choice)
#   puts '>> Invalid input! Please enter y or n'
# end
# puts 'something' if choice == 'y'

# answer = nil
# loop do
#   puts ">> How many output lines do you want? Enter a number >= 3:"
#   answer = gets.chomp.to_i
#   if answer > 3
#     puts "LSbest!\n" * answer
#     break
#   else
#     puts "Not enough lines."
#   end
# end

# password = "best1password"
# loop do
#   puts ">> Please enter your password:"
#   answer = gets.chomp
#   break if answer == password
#   puts "Invalid password!"
# end
# puts "Welcome!"

# username = "chris"
# password = "best1password"
# loop do
#   puts ">> Please enter your user name:"
#   name_input = gets.chomp.downcase
#   puts ">> Please enter your password:"
#   password_input = gets.chomp
#   break if password_input == password && name_input == username
#   puts "Authorizaion failed!"
# end
# puts "Welcome!"

# Write a program that asks the user to enter two integers, then prints the results of dividing the first by the second. The second number must not be 0. Since this is user input, there's a good chance that the user won't enter a valid integer. Therefore, you must validate the input to be sure it is an integer. You can use the following code to determine whether the input is an integer:

# def valid_number?(number_string)
#   number_string.to_i.to_s == number_string
# end

# def divide
#   loop do
#     puts "Enter first number"
#     num1 = gets.chomp
#     if valid_number?(num1)
#     else
#       puts " Invalid input. Only integers are allowed."
#       next
#     end
#     puts "Enter second number"
#     num2 = gets.chomp
#     if valid_number?(num2)
#     else
#       puts "Invalid input. Only integers are allowed."
#       next
#     end
#     answer = num1.to_i / num2.to_i
#     puts "#{num1} / #{num2} = #{answer}"
#     break
#   end
# end

# def divide
#   num1 = nil
#   loop do
#     puts "Enter first number"
#     num1 = gets.chomp
#     if valid_number?(num1)
#       break
#     else
#       puts " Invalid input. Only integers are allowed."
#     end
#   end
#   num2 = nil
#   loop do
#     puts "Enter second number"
#     num2 = gets.chomp
#     if num2 == "0"
#       puts "Invalid input. Only integers are allowed."
#     elsif valid_number?(num2)
#       break
#     else
#       puts "Invalid input. Only integers are allowed."
#     end
#   end
#   answer = num1.to_i / num2.to_i
#   puts "#{num1} / #{num2} = #{answer}"
# end

# divide

# Modify this program so it repeats itself after each input/print iteration, asking for a new number each time through. The program should keep running until the user enters q or Q.

# answer = nil
# while answer != "q"
#   loop do
#     puts '>> How many output lines do you want? Enter a number >= 3:'
#     answer = gets.chomp.downcase
#     if answer == "q"
#       break
#     else
#       answer = answer.to_i
#     end
    
#     if answer >= 3
#       puts "Launch School is the best!\n" * answer
#     else
#       puts ">> That's not enough lines."
#     end
#   end
# end

# A:loop do
#   input_string = nil
#   number_of_lines = nil

#   loop do
#     puts '>> How many output lines do you want? ' \
#          'Enter a number >= 3 (Q to Quit):'

#     input_string = gets.chomp.downcase
#     break if input_string == 'q'

#     number_of_lines = input_string.to_i
#     break if number_of_lines >= 3

#     puts ">> That's not enough lines."
#   end

#   break if input_string == 'q'

#   while number_of_lines > 0
#     puts 'Launch School is the best!'
#     number_of_lines -= 1
#   end
# end

# loop do
#   print 'How many output lines do you want? Enter a number >= 3 (Q to quit): '
#   input = gets.chomp
#   break if %w(q Q).include?(input)
#   if input.to_i >= 3
#     input.to_i.times { puts 'Launch School is the best!'}
#   else
#     puts "That's not enough lines"
#   end
# end

# Opposites Attract
# Write a program that requests two integers from the user, adds them together, and then displays the result. Furthermore, insist that one of the integers be positive, and one negative; however, the order in which the two integers are entered does not matter.

# Do not check for the positive/negative requirement until both integers are entered, and start over if the requirement is not met.

# You may use the following method to validate input integers:
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
# num1 = nil
# num2 = nil
# loop do
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num1 = gets.chomp
#     if valid_number?(num1)
#       num1 = num1.to_i
#       break
#     else
#       puts "Invalid input. Only non-zero integers are allowed."
#     end
#   end
#   loop do
#     puts ">> Please enter a positive or negative integer:"
#     num2 = gets.chomp
#     if valid_number?(num2)
#       num2 = num2.to_i
#       break
#     else
#       puts "Invalid input. Only non-zero integers are allowed."
#     end
#   end
  
#   if num1 < 0 && num2 < 0 || num1 > 0 && num2 > 0
#     puts "Sorry. One integer must be positive, one must be negative.
#     >> Please start over."
#   else
#     puts "#{num1} + #{num2} = #{num1 + num2}"
#     break
#   end
# end

# A:
# def read_number
#   loop do
#     puts '>> Please enter a positive or negative integer:'
#     number = gets.chomp
#     return number.to_i if valid_number?(number)
#     puts '>> Invalid input. Only non-zero integers are allowed.'
#   end
# end

# first_number = nil
# second_number = nil

# loop do
#   first_number = read_number
#   second_number = read_number
#   break if first_number * second_number < 0
#   puts '>> Sorry. One integer must be positive, one must be negative.'
#   puts '>> Please start over.'
# end

# sum = first_number + second_number
# puts "#{first_number} + #{second_number} = #{sum}"

