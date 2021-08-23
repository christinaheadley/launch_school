pets = ['cat', 'dog', 'fish', 'lizard']
# Select 'fish' from pets, assign the return value to a variable named my_pet, then print the value of my_pet.

# I have a pet fish!

# my_pet = pets[2]
# p my_pet

# Write some code that selects 'fish' and 'lizard' from the pets array - select the two items at the same time. Assign the return value to a variable named my_pets, then print the contents of my_pets as a single string, e.g.:

# I have a pet fish and a pet lizard!
# Make sure you use my_pets to get the words "fish" and "lizard" in that message.
# # my_pets  = pets[2, 3]
# my_pets = pets[2..3]
# p my_pets
# p "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}!"
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]
my_pets.pop
# p my_pets

colors = ['red', 'yellow', 'purple', 'green']
# Use Array#each to iterate over colors and print each element.

# colors.each do |color|
#   p color
# end
# numbers = [1, 2, 3, 4, 5]
# # Use Array#map to iterate over numbers and return a new array with each number doubled. Assign the returned array to a variable named doubled_numbers and print its value using #p.
# doubled_numbers = numbers.map do |num|
#   num * 2
# end
# p doubled_numbers
numbers = [5, 9, 21, 26, 39]
# Use Array#select to iterate over numbers and return a new array that contains only numbers divisible by three. Assign the returned array to a variable named divisible_by_three and print its value using #p.
divisible_by_three = numbers.select do |n|
  n % 3 == 0
end
# p divisible_by_three
# [9, 21, 39]
# The following array contains three names and numbers. Group each name with the number following it by placing the pair in their own array. Then create a nested array containing all three groups. What does this look like? (You don't need to write any code here. Just alter the value shown so it meets the exercise requirements.)
favorites = [['Dave', 7], ['Miranda', 3], ['Jason', 11]]
# p favorites.flatten
array1 = [1, 5, 9]
array2 = [1, 9, 5]
# Compare array1 and array2 and print true or false based on whether they match.
# array1 == array2 ? puts(true) : puts(false)
puts array1 == array2