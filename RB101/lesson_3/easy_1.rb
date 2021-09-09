# Replace the word "important" with "urgent" in this string:

# advice = "Few things in life are as important as house training your pet dinosaur."

# P: I want to be able to find the original word even if the sentence is restructured. ok to return nil if not found/ implicit instruction that 'important' is in string. output identified

# E. What if important is in sentence more than once? Implicit instruction that is only there once.
# D: take in a string variable named advice.
# Modify one word in the string. May want to convert string to an array of individual words.
# return a string variable. Can be called advice or another name.

# A: Mental model: 

# Mutate string with sub! method to return new string with urgent replacing instance of important.

# sub!(pattern, replacement) → str or nil
# sub!(pattern) {|match| block } → str or nil
# Performs the same substitution as #sub in-place.

# Returns str if a substitution was performed or nil if no substitution was performed.

# Additional break down:
# assign sentence to variable 'advice'
# mutate variable with sub! method; pass two arguments (pattern and replacement)
# print out mutated variable advice

# C: 
# advice = "Few things in life are as important as house training your pet dinosaur."
# advice = "Few things in life are as important as house training your important pet dinosaur."  
#--> only replaces first instance
# advice = "Few things in life are as as house training your pet dinosaur."
#---> nil
# p advice.sub!('important', 'urgent')

=begin
Given two strings, return the characters that are not common in the two strings.

# PROBLEM
Input: 2 strings
Output: 1 string
Task: find characters that are not common in the two input strings
Questions:
- what characters do we need to consider?
- what if we have empty string as input?
- what if the strings contain all common characters?
- does number of occurrences matter?
- does order matter in input string?
- does order matter in returned string?
- does letter case matter if alphabetic characters?

Rules/Requirements:
- number of occurrences of common characters doesn't matter
- order doesn't matter in terms of the input strings
- order does matter in the returned string - uncommon characters from first string then second string
- if all characters in common, return empty string
- we only need to deal with lowercase alphabetic characters
- input strings can be of different lengths


# EXAMPLES
p unique_string_characters("xyab","xzca") == "ybzc"
p unique_string_characters("a","z") == "az"
p unique_string_characters("abcd","de") == "abce"
p unique_string_characters("abc","abba") == "c"
p unique_string_characters("xyz","zxy") == ""

# DATA STRUCTURES
Input: 2 strings
Output: 1 string
- array

# ALGORITHM
create a method called unique_string_characters that takes 2 strings as arguments.
Combine two strings into one string
Use chars method to turn string into an array of individual characters
iterate through array to see if char has a duplicate
if so, pop
convert array to new string and return

use uniq method to return unique characters then compare
would prefer to find a method that returns the opposite of uniq
!uniq ? or select !uniq to iterate
return a string (use .join to conver from array to string)
=end

# def unique_string_characters(a, b)
#   str = ''
#   a.chars.each { |char| str << char unless b.include?(char) }
#   b.chars.each { |char| str << char unless a.include?(char) }
#   str
# end
# p unique_string_characters("xyab","xzca") == "ybzc"
# p unique_string_characters("a","z") == "az"
# p unique_string_characters("abcd","de") == "abce"
# p unique_string_characters("abc","abba") == "c"
# p unique_string_characters("xyz","zxy") == ""

# 4. The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]
# What do the following method calls do (assume we reset numbers to the original array between method calls)?

numbers.delete_at(1)
# 2
# numbers = [1, 3, 4, 5]

numbers.delete(1)
# 1
# numbers = [2, 3, 4, 5]

# delete_at only available with array. delete also avail for string and hash. 

# In delete, the argument is an object. If the argument matches an object in the array, it removes all items that are equal to that object and returns the last deleted item. If no match is found, it retuns nil.

# In delete_at, the argument represents an index, and the object in the array at that index is deleted and returned. Returns nil if index is out of range. See slice.

# 5 Programmatically determine if 42 lies between 10 and 100.

# hint: Use Ruby's range object in your solution.

# (10..100).include?(42)

# 6 Starting with the string:

# famous_words = "seven years ago..."
# # show two different ways to put the expected "Four score and " in front of it.
# p "Four score and " + famous_words
# p "Four score and #{famous_words}"
# A: famous_words.prepend("Four score and ")
# or
# "Four score and " << famous_words

# 7 If we build an array like this:

# flintstones = ["Fred", "Wilma"]
# flintstones << ["Barney", "Betty"]
# flintstones << ["BamBam", "Pebbles"]
# # We will end up with this "nested" array:

# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]]
# Make this into an un-nested array.
# p flintstones.flatten A: flatten!

# 8. Given the hash below

# flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
# Turn this into an array containing only two elements: Barney's name and Barney's number
# p flintstones.to_a[2]
# A: flintstones.assoc("Barney") .assoc only compares to keys. .assoc(2) returns nil