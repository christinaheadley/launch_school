# # In this hash of people and their age,

# ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# # see if "Spot" is present.

# # Bonus: What are two other hash methods that would work just as well for this solution?
# ages.assoc("Spot")
# ages.key?("Spot") 
# # (style guide says ages.key?("Spot") but documentation under hash/include uses has_key?)
# ages.include?("Spot")
# # A: ages.key?("Spot")
# # Bonus Answer:
# # Hash#include? and Hash#member?

# # a = 'Hello'

# # def hi
# #   a = "hi"
# # end
# # puts a
# # puts b

# a = 'Hello'

# # loop do |b|
# #   a = 'Goodbye'
# #   b = a
# #   break
# # end
# puts a

# num = 5

# def my_method
#   num = 10
# end

# puts num

# # Kernel#puts

# 2. Starting with this string:

munsters_description = "The Munsters are creepy in a good way."
# Convert the string in the following ways (code will be executed on original munsters_description above):

# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
# "The munsters are creepy in a good way."
# "the munsters are creepy in a good way."
# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
# p munsters_description.swapcase
# p munsters_description.capitalize
# p munsters_description.downcase
# p munsters_description.upcase

# 3. We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
# add ages for Marilyn and Spot to the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# ages["Marilyn"] = 22

# # for i in additional_ages do 
# ages.each do |k, v|
#   additional_ages[k] = v
# end
# p additional_ages
# A:  ages.merge!(additional_ages)
# 4. See if the name "Dino" appears in the string below:

# advice = "Few things in life are as important as house training your pet dinosaur."
# advice.include?("Dino")
# A: advice.match?("Dino")
# 5. Show an easier way to write this array:
# flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w[Fred Barney Wilma Betty BamBam Pebbles]
# p flintstones
# 6 How can we add the family pet "Dino" to our usual array:
# p flintstones << "Dino"
# p flintstones.push("Dino")
# p flintstones.append("Dino")
# p flintstones.prepend("Dino")
# p flintstones.unshift("Dino")
# Also:
# p flintstones.concat(["Dino"])
# 7.
# p flintstones.concat(["Dino", "Hoppy"])
# flintstones << "Dino" << "Hoppy"
# p flintstones.push("Dino", "Hoppy")
# p flintstones.append("Dino", "Hoppy")
# p flintstones.prepend("Dino", "Hoppy")
# p flintstones.unshift("Dino", "Hoppy")

# A: flintstones.push("Dino").push("Hoppy")   # push returns the array so we can chain
# flintstones.concat(%w(Dino Hoppy))  # concat adds an array rather than one item
