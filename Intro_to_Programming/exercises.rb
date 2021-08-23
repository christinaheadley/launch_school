#1 Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
# numbers.each do |num| p num
# end

#2 Same as above, but only print out values greater than 5.
# numbers.each { |num| p num if num > 5 }

#3 Now, using the same array from #2, use the select method to extract all odd numbers into a new array.
odds = []
numbers.select do |num|
  if num % 2 != 0
    odds << num
  end
end
odds
# revised per solution:
odds = numbers.select { |num| num % 2 != 0 }

#4 Append 11 to the end of the original array. Prepend 0 to the beginning.
numbers.unshift(0).push(11)

#5 Get rid of 11. And append a 3.
numbers.pop
numbers.push(3)

#6 Get rid of duplicates without specifically removing any one value.

numbers.uniq

#9 Suppose you have a hash h = {a:1, b:2, c:3, d:4}
# 1. Get the value of key `:b`.
# 2. Add to this hash the key:value pair `{e:5}`
# 3. Remove all key:value pairs whose value is less than 3.5

h = {a:1, b:2, c:3, d:4}
h.fetch(:a)
#or h[:b]
h[:e] = 5
h
h.reject! { |_k, v| v < 3.5 }
h

# 10 yes and yes
#11 Given the following data structures. Write a program that copies the information from the array into the empty hash that applies to the correct person.

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

# Expected output:
#  {
#    "Joe Smith"=>{:email=>"joe@email.com", :address=>"123 Main st.", :phone=>"555-123-4567"},
#    "Sally Johnson"=>{:email=>"sally@email.com", :address=>"404 Not Found Dr.",  :phone=>"123-234-3454"}
#  }
# my solution:
contacts["Joe Smith"] = contact_data[0]
# their solution:
contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone] = contact_data[1][2]
contacts

#12 Using the hash you created from the previous exercise, demonstrate how you would access Joe's email and Sally's phone number?

contacts["Joe Smith"][0]
contacts["Sally Johnson"][2]
# or their solution:
# puts "Joe's email is: #{contacts["Joe Smith"][:email]}"
# puts "Sally's phone number is: #{contacts["Sally Johnson"][:phone]}"

#13 Use Ruby's Array method delete_if and String method start_with? to delete all of the words that begin with an "s" in the following array.

# Then recreate the arr and get rid of all of the words that start with "s" or starts with "w".
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

arr.delete_if{ |string| string.start_with?("s", "w") }
arr.delete_if{ |string| string.start_with?("s") }

arr

#14 Take the following array:
# and turn it into a new array that consists of strings containing one word. (ex. ["white snow", etc...] → ["white", "snow", etc...]. Look into using Array's map and flatten methods, as well as String's split method.

a = ['white snow', 'winter wonderland', 'melting ice', 'slippery sidewalk', 'salted roads', 'white trees']

a = a.map do |string|
  string.split
end
#just printing above doesn't work, needs to be assigned to a
a.flatten

#15 What will the following program output?

hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}
# p hash1
# p hash2
# if hash1 == hash2
#   puts "These hashes are the same!"
# else
#   puts "These hashes are not the same!"
# end

#16 Challenge: In exercise 11, we manually set the contacts hash values one by one. Now, programmatically loop or iterate over the contacts hash from exercise 11, and populate the associated data from the contact_data array. Hint: you will probably need to iterate over ([:email, :address, :phone]), and some helpful methods might be the Array shift and first methods.

# Note that this exercise is only concerned with dealing with 1 entry in the contacts hash, like this:

contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
# As a bonus, see if you can figure out how to make it work with multiple entries in the contacts hash.

Solution
  contact_data = ["joe@email.com", "123 Main st.", "555-123-4567"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :phone]

contacts.each do |name, hash|
  fields.each do |field|
    hash[field] = contact_data.shift
  end
end
Solution to bonus, where we can work with multiple entries in the contacts hash:

Copy Code
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift
  end
end