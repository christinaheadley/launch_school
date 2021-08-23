# What will the following code print and why? Don't run it until you have tried to answer.
# A: 7

# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a

# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts my_value(a)
# puts a
# A: 7  (puts my_value(a) -> 17)

# a = 7
# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a
# A: 7

# a = "Xyzzy"
# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a
# A: Xyzzy NO 
# correct A: Xy-zy:
# This problem looks remarkably similar to the first problem in this set. However, this time we are working with a string, and we are assigning to b[2] instead of b.

# The result is quite different. When we were working with a numeric variable, no changes were made to a. This was due to the fact that numbers are immutable, and assignment merely changes the object that a variable references. Now, though, Strings are mutable - they can be modified - and, in particular, the method String#[]= is a mutating method; it actually modifies the string. Since we are actually modifying the string referenced by b, and b references the same string as a, the result from printing a shows an update to the value of the string. 

# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a
# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a
# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a

# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a
# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a
a = 7
array = [1, 2, 3]

def my_value(ary)
  ary.each do |b|
    a += b
  end
end

my_value(array)
puts a