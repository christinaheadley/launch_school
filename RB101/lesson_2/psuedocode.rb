# 1. a method that returns the sum of two integers

def method(int1, int2)    #define method and pass 2 integers as arguments
  sum = int1 + int2       #add two integers and set result to sum
  return sum              #return sum, cb implicit or left out bc prev line
end
# call method to print sum   
# p method(3, 4)

# 2. a method that takes an array of strings, and returns a string that is all those strings concatenated together

# define a method(["string", "string2", "string3"])
# def method(array)
#   # make new string and set equal to concat of array items
#   # could set a counter or use .each method (does it need to be pushed in to new string?)
#   new_string = ""       
#   for string in array do
#     new_string << string      #REDO confused about when I need to set empty string and when new variable can be used without instantiation (if that's the right word)
#   end
#   p new_string
  
# end
# set index to 0
# initialize empty string = ""
# empty string << array[index] 
# index += 1
# def method(array)       #REDID in different method
#   index = 0
#   new_string = ""
#   while index < array.length
#     new_string << array[index]
#     index += 1
#   end
#   new_string
# end
# p method(["string", "string2", "string3"])

#3. a method that takes an array of integers, and returns a new array with every other element

# define method with arguement array
# array is made of integers
# set new array = []
# iterate through array and return integer if index is even
# each_with_index method? can use bc Enumerable is an included module of array
# return new_array
# end method
# call method and pass array of integers
# def method(array_of_ints)
#   new_array = []
#   # array_of_ints.each_with_index { |item, index| item if index.even? }
#   array_of_ints.each_with_index do |int, index| 
#     if index.even?
#       puts int             #REDO puts int returns list of ints but shoveling them into new array returns all ints in array
#     end
#   end
# end
# p method([1, 2, 3, 4, 5])
def method(array_of_ints)
  new_array = []
  array_of_ints.each_with_index do |int, index| 
    if index % 2 == 0
      new_array << int 
      new_array 
    end
  end
  new_array                  #REDONE new array needed to be returned outside of method
end
p method([1, 2, 3, 4, 5])
