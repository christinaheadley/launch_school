# string_variable = String.new
# p string_variable

# puts "It's now 12 o'clock."
# Using the following code, compare the value of name with the string 'RoGeR' while ignoring the case of both strings. Print true if the values are the same; print false if they aren't. Then, perform the same case-insensitive comparison, except compare the value of name with the string 'DAVE' instead of 'RoGeR'.
  
  # name = 'Roger'
  # puts name.casecmp("RoGeR") == 0
  # puts name.casecmp("DAVE") == 0

# Modify the following code so that the value of name is printed within "Hello, !".

# name = 'Elizabeth'

# puts "Hello, #{name}!"
# Using the following code, combine the two names together to form a full name and assign that value to a variable named full_name. Then, print the value of full_name.

first_name = 'John'
last_name = 'Doe'
# full_name = "#{first_name} #{last_name}"
full_name = first_name + ' ' + last_name
# puts full_name

state = 'tExAs'
state.capitalize!
# p state

# Given the following code, invoke a destructive method on greeting so that Goodbye! is printed instead of Hello!.

# greeting = 'Hello!'
# # greeting = 'Goodbye'
# greeting.gsub!('Hello', 'Goodbye')
# puts greeting

# alphabet = 'abcdefghijklmnopqrstuvwxyz'
# # puts alphabet.chars
# puts alphabet.split('')
# Given the following code, use Array #each to print the plural of each word in words.

# words = 'car human elephant airplane'
# words.split(' ').each do |word|
#   puts "#{word}s"     #puts word + 's'
# end

# colors = 'blue pink yellow orange'
# p colors.include?('yellow')
# p colors.include?('purple')

# p "hello".rjust("20")           #=> "               hello"

# a = %w(a b c d e)
# # a.insert(3, 5, 6, 7)
# p a
# a.insert(3, 'c', 'd')
# p a

s = 'abc def ghi,jkl mno pqr,stu vwx yz'
# puts s.split.inspect
# puts s.split(',').inspect
puts s.split(',', 2).inspect


