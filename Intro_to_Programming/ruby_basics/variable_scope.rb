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
# a = 7
# array = [1, 2, 3]

# def my_value(ary)
#   ary.each do |b|
#     a += b
#   end
# end

# my_value(array)
# puts a

# REDO after reading RB101 lesson 2 re variable scope

# 1. yes
# a = 7

# def my_value(b)
#   b += 10
# end

# my_value(a)
# puts a
# ma: 7

# 2. yes
# a = 7

# def my_value(a)
#   a += 10
# end

# my_value(a)
# puts a

# ma: 7 bc  methods have self-contained scope. That means that you can't refer to or modify any variables that aren't initialized inside the method's body, and none of the variables initialized by the method are available outside the method's body. A method definition has no notion of "outer" or "inner" scope -- you must explicitly pass in any parameters to a method definition.

# 3. wrong simple mistake, scoping correct.
# a = 7

# def my_value(b)
#   a = b
# end

# my_value(a + 5)
# puts a
# ma: unknown error, won't know what a means on line 127

# 4 yes
# a = "Xyzzy"

# def my_value(b)
#   b[2] = '-'
# end

# my_value(a)
# puts a
# my: Xy-zy bc strings are mutable

# 5 yes
# a = "Xyzzy"

# def my_value(b)
#   b = 'yzzyX'
# end

# my_value(a)
# puts a
# ma: "Xyzzy"

# 6 NO
# a = 7

# def my_value(b)
#   b = a + a
# end

# my_value(a)
# puts a
# ma: 7
# A: undefined local variable

# 7. yes
# a = 7
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a
# ma: 3

# 8. NO 
# array = [1, 2, 3]

# array.each do |element|
#   a = element
# end

# puts a
# ma: 3
# A: undefined local variable

# 9. no
# a = 7
# array = [1, 2, 3]

# array.each do |a|
#   a += 1
# end

# puts a
# # ma: 4
# A: 7 problem demonstrates shadowing. Shadowing occurs when a block argument
#  hides a local variable that is defined outside the block. Since the outer a
#  is shadowed, the a += 1 has no effect on it. 
# In fact, that statement has no effect at all.

# Why is #9 shadowing but not #7? Block argument hides variable, not block.
#  so if the item between the pipes was defined outside the block,
#  then it is shadowing
