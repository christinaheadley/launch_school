#1. Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# repeat('Hello', 3)

#  def repeat(x, y)
#   y.times do
#     puts x
#   end
#  end
#  repeat('Hello', 3)

# 2. Odd
# Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

# def is_odd?(integer)
#   if integer % 2 != 0
#     true
#   else
#     false
#   end
# end
# puts is_odd?(2)    # => false
# puts is_odd?(5)    # => true
# puts is_odd?(-17)  # => true
# puts is_odd?(-8)   # => false
# puts is_odd?(0)    # => false
# puts is_odd?(7)    # => true
# Keep in mind that you're not allowed to use #odd? or #even? in your solution.
# A: def is_odd?(number)
# number % 2 == 1
# end

# 3.Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.
# def digit_list(number)
#   array = number.to_s.chars#.to_a          #redundant bc chars returns an array
#     array.map! {|number| number.to_i}
# end
# puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
# puts digit_list(7) == [7]                     # => true
# puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
# puts digit_list(444) == [4, 4, 4]             # => true

# A: Brute force:
# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end

# Idiomatic Ruby:
# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end

# # The brute force approach (which is not a derogatory term) chops off digits from the end of the number one at a time, adding them to an array, then returns the array. The tricky part of this loop is the use of Integer#divmod which divides number by 10, and returns two values: the result of performing an integer division, and the remainder. For example, 12345.divmod(10) returns [1234, 5], and has the advantage of being easy to understand.

# The second solution uses an idiomatic approach. Though somewhat dense, it's typical of the code you'll encounter (and write!) in Ruby all the time. Let's break it down.

# Our goal is to convert a number to a list of its digits. First, we convert the number to a string, then split it into an array of numeric characters. This array is almost what we want, but we need an array of numbers, not an array of strings. Enumerable#map comes to the rescue. You might find the (&:to_i) part weird, but this is Ruby syntactic sugar; it's shorthand for:

# something.map { |char| char.to_i }

# REDO 4. Write a method that counts the number of occurrences of each element in a given array.
# for vehicle in vehicles
#   value = vehicles.count(vehicle)
#   p "#{vehicle} => #{value}"
# end
# def count_occurrences(vehicles)
#   hash = {}
#   vehicles.uniq.each do |vehicle|
#     hash[vehicle] = vehicles.count(vehicle)
#   end
  
#   hash.each do |vehicle, count|
#     puts  "#{vehicle} => #{count}"
#   end
# end
# def count_occurrences(array)
#   occurrences = {}

#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end

#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end
# def count_occurrences(vehicles)
#   hash = {}
#   index = 0
#   while index < vehicles.length
#     if hash[vehicles[index]]
#       hash[vehicles[index]] += 1
#     else
#       hash[vehicles[index]] = 1
#     end
#     index += 1
#   end
#   p hash
# end
# vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
# count_occurrences(vehicles)

# The tests above should print true.
# string = 'Hello World'
# def reverse_sentence(string)
#   new_array = []
#   array = string.split(' ')
#   new_array << array.pop until array.empty?
#   new_array.join(' ')
# end
# reverse_sentence('Hello World')
# puts reverse_sentence('Hello World') == 'World Hello'
# puts reverse_sentence('Reverse these words') == 'words these Reverse'
# puts reverse_sentence('') == ''
# puts reverse_sentence('    ') == '' # Any number of spaces results in ''
# A: 
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end

# Write a method that takes one argument, a string containing one or more words, and returns the given string with words that contain five or more characters reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

# def reverse_words(string)
#   new_a = string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(" ")
# end
# puts reverse_words('Professional')          # => lanoisseforP
# puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
# puts reverse_words('Launch School')         # => hcnuaL loohcS
# A: def reverse_words(string)
# words = []

# string.split.each do |word|
#   word.reverse! if word.size >= 5
#   words << word
# end

# words.join(' ')
# end

# When given a string or an array, and asked to evaluate each character or element, your first instinct should be to reach for an iterator. Our goal here is to iterate over the given string and check each word for the number of characters it contains. If it has five or more characters then we'll reverse the word.

# At the top of our method, we create an empty array named words that will hold each modified word of the result: these words will be reversed if long, or as-is if they are short. We use #each to iterate over string, but first, we need to separate each word in string using #split, which returns an array containing the separated words. For each word, we count the number of characters it contains using #size. If it contains five or more characters, we use the destructive method #reverse! to reverse the word. We mutate word so that we can add it to words by invoking words << word.

# After iterating over string and evaluating each word, words will contain all of the words, with longer words reversed. Finally, we can invoke words.join(' ') to return the desired string.

# 7. Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

# mental model: write a method named stringy that takes a positive numbers and returns a string that many digits long. the string will start with 1, then alternate 0, 1... and can end in a 0 or a 1

# def stringy(num)
#   if num.even?
#     "10" * (num/2)
#   else
#     "10" * (num/2) + "1"
#   end
# end
# puts stringy(1) == '1'    #changed to verify edge case
# puts stringy(9) == '101010101'
# puts stringy(4) == '1010'
# puts stringy(7) == '1010101'

# 8. Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.


# def average(array)
#   sum = 0
#   array.each { |item| sum += item }
#   sum/ array.length
# end
#refactor:
# def average(array)
#   array.sum/ array.length
# end
# # p (array.sum/ array.length).class confirm result is integer
# puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
# puts average([1, 5, 87, 45, 8, 8]) == 25
# puts average([9, 47, 23, 95, 16, 52]) == 40

# A: Solution
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end
# Discussion
# Two things need to be done to find the average. First, add every number together. Second, divide the sum by the number of elements. We accomplish the first part by using Enumerable#reduce(also known as #inject), which combines all elements of the given array by applying a binary operation. This operation is specified by a block or symbol. We used a block in our solution, but we could have just as easily used a symbol, like this:

# numbers.reduce(:+)
# Once we have the sum, all that's left is to divide it by the number of elements. To do that, we use #count to count the number of elements in numbers. Then, we divide sum by the number of elements and return the quotient.
 # 9 Write a method that takes one argument, a positive integer, and returns the sum of its digits.

 # The tests above should print true.
 
 # For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).
 
# def sum(int)
#   array = int.to_s.chars.map(&:to_i)
#   array.reduce(:+)
# end

# puts sum(23) == 5
# puts sum(496) == 19
# puts sum(123_456_789) == 45

# A: Solution 1 
# def sum(number)
# sum = 0
# str_digits = number.to_s.chars

# str_digits.each do |str_digit|
#   sum += str_digit.to_i
# end

# sum
# end
# Solution 2

# def sum(number)
# number.to_s.chars.map(&:to_i).reduce(:+)
# end
# Discussion
# This exercise proves to be tricky in a couple of ways. First, if you tried to split the number while it was an integer you probably got an error. The key here is to convert it to a string, then split it, like this:

# 23.to_s.chars # => ["2", "3"]
# To remember that we are dealing with strings, we assign this array to a variable named str_digits. We then iterate over our array and, on each iteration, increment the sum by the given digit converted back to an integer.

# What would happen if we forgot to convert the string digits back to integers? We would get a TypeError telling us that we can't coerce a string into an integer. We would be trying to add a string like '2' to our initial value of 0, which is not allowed.

# Let's look at the second solution. If you did the last exercise, you may think of using #reduce to sum the numbers in the array, like this:

# def sum(number)
# number.to_s.chars.reduce(:+)
# end
# If you tried this, however, you probably got unexpected results. #reduce worked, but instead of adding integers, it was adding strings, which isn't what you want. Again, the array of strings needs to be converted to an array of integers. We can do this using #map and Ruby's shorthand syntax:

# ["2", "3"].map(&:to_i) # => [2, 3]
# If that looks confusing, just remember that it's the same as this:

# ["2", "3"].map { |element| element.to_i } # => [2, 3]
# It's possible to invoke all of these methods in one statement due to the return values of each method. All four of the methods used in the solution return the object we need to continue chaining methods. The following code shows the return value of each method:

# 23.to_s        # => "23"
# .chars       # => ["2", "3"]
# .map(&:to_i) # => [2, 3]
# .reduce(:+)  # => 5
# This makes for very compact code, but maybe less readable than the first solution. What do you think?

# Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

def calculate_bonus(num, bool=true)
  bool ? num/2 : 0           #or bool == true ?
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000



#TREEHOUSE
# A: 
# def stringy(size)
#   numbers = []

#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end

#   numbers.join
# end
# some_value = 23
# some_value.times{ |index| puts index }
# my_array = [2, 3, 4]
# value = my_array.pop     #why does this return [2, 3] instead of [2, 3, 4] ---> pop is a method that mutates the caller
# puts my_array.inspect
# puts value
# counter = 0
# until counter < 3
#   puts counter
#   counter += 1
# end
# counter = 0
# until counter > 3
#   puts counter
#   counter += 1
# end

# ["a", "b", "c"].each { |item| puts item }

# def my_method
#   p "a"
# end

# my_method { |item| puts item }
# def my_method
#   puts "hello"
# end

# my_method { puts "hello" }

# 3.times do
#   puts "Hello world!"
#   puts "This is the second line."
#   return true
# end

# def write_code
#   yield
# end
# write_code

# def block_method
#   puts "This is the first line in block_method."
#   yield
#   yield
#   puts "This statement is after the yield keyword."
# end

# block_method do
#   puts "This statement is called from the block."
# end

# def get_name
#   print "Enter your name: "
#   name = gets.chomp
#   yield name
#   name      #need to implicit return if we want to access variable in puts "#{my_name}"
# end

# my_name = get_name do |your_name|      #your_name or name, either works-- not limited to                                                                               the same variable name we are yielding
#   puts "That's a cool name, #{your_name}!"
# end

# puts "my_name: #{my_name}"

# puts "my_name: #{my_name}"
# def get_name
#   name = "My Name"
#   yield name
# end

# # Write your code here

# get_name do |name|
#   puts name
# end

# def get_name(prompt)
#   print prompt + ": "
#   name = gets.chomp
#   yield name
#   name
# end

# my_name = get_name("Enter your name") do |your_name|
#   puts "That's a cool name, #{your_name}!"
# end
# puts "my_name: #{my_name}"

# def get_name(prompt, &block)    # & assigns block to variable (named block)
#   print prompt
#   name = gets.chomp
#   print "Age: "
#   age = gets.chomp
#   block.call(name, age)       #same as yield name, age. When we assign a block to a variable, we can explicitly call it with block.call and optionally pass in argument(s) (name, age)
#   name
# end
# my_name = get_name("Enter your name: ") do |your_name, age|
#   puts "That's a cool name, #{your_name}! Age #{age}." 
# end

# puts "my_name: #{my_name}"

# def get_name(prompt, &block)
#   print prompt
#   name = gets.chomp
#   # block.call(name) 
#   yield name if block_given?   #block_given? tells you if a block was sent in to a method
#   name
# end

# my_name = get_name("Name: ") do |your_name|
#   puts "That's a cool name, #{your_name}!"
# end
# puts "my_name: #{my_name}"


# def get_name(prompt, &block)
#   if block_given?
#     print prompt
#     name = gets.chomp
#     # yield name
#     block.call(name)
#     name
#   else
#     puts "No block given."
#   end
# end

# my_name = get_name("Name: ") 

# # my_name = get_name("Name: ") do |your_name|
# #   puts "That's a cool name, #{your_name}!"
# # end

# puts "my_name: #{my_name}"
# string = "Tree"
# string.each_char{ |c| print "#{c}-" }