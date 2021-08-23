#1 Below we have given you an array and a number. Write a program that checks to see if the number appears in the array.

arr = [1, 3, 5, 7, 9, 11]
number = 3

arr.include?(number)

#2 What will the following programs return? What is the value of arr after each?
arr = ["b", "a"]
arr = arr.product(Array(1..3))
# p arr
# my guess:["b", 1], ["b", 2],["b", 3], ["a", 1],["a", 2], ["a", 3]
# actual: [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
arr.first.delete(arr.first.last) #same as p arr.first.delete(1)
# p arr.delete(arr.first.last) - >
# nil
# [["b", 1], ["b", 2], ["b", 3], ["a", 1], ["a", 2], ["a", 3]]
# first(n) → new_array
# Returns elements from self; does not modify self.
# delete -> destructive
# arr.first.delete(requires an argument here)
# p arr.first.last --> prints last item in first array --> 1
# arr = ["b", "a"]
# arr = arr.product([Array(1..3)])
# arr.first.delete(arr.first.last)

# 3 return "example"
arr = [["test", "hello", "world"],["example", "mem"]]
arr.last.first

# 4.What does each method return in the following example?
arr = [15, 7, 18, 5, 12, 8, 5, 1]

arr.index(5)
#3 #indexed location of 5 inside array

# arr.index[5]
# NoMethodError

arr[5]
# 8

#4 What is the value of a, b, and c in the following program?

string = "Welcome to America!"
a = string[6] #e
b = string[11] #A
c = string[19] #nil

# 6  names['margaret'] does not equal 3 (altho names[3] equals margaret). Need to use index to change or add name "Jody", eg names[4] = 'jody'

# Use the each_with_index method to iterate through an array of your creation that prints each index and value of the array.

a = [4, 8, "a"]
# a.each_with_index { |val, idx| puts "#{idx}. #{val}" }


# Write a program that iterates over an array and builds a new array that is the result of incrementing each value in the original array by a value of 2. You should have two arrays at the end of this program, The original array and the new array you've created. Print both arrays to the screen using the p method instead of puts.

arr = [5, 1, 8, 55]
new_array = arr.map {|n| n + 2}

arr
new_array