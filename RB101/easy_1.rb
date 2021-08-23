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

def reverse_words(string)
  new_a = string.split.map { |word| word.length >= 5 ? word.reverse : word }.join(" ")
end
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
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