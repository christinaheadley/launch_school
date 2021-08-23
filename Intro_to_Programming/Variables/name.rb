# Write a program called name.rb that asks the user to type in their name and then prints out a greeting message with their name included.

# puts "What is your name?"
# name = gets.chomp
# puts "Welcome, #{name}!"
# that prints the name of the user 10 times. You must do this without explicitly writing the puts method 10 times in a row. 
# 10.times do 
#   puts name
# end
# me.rb again so that it first asks the user for their first name, saves it into a variable, and then does the same for the last name. Then outputs their full name all at once.
puts "What is your first name?"
fname = gets.chomp
puts "What is your last name?"
lname = gets.chomp
puts "Welcome, #{fname} #{lname}!"