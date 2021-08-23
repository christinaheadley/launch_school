# Create a hash that contains the following data and assign it to a variable named car.

# type	color	mileage
# sedan	blue	80_000

# car = Hash[:type => "sedan", :color => "blue", :mileage => 80_000]
# Using the code below, add the key :year and the value 2003 to car.

car = {
  type:    'sedan',
  color:   'blue',
  # mileage: 80_000,
  year: 2003
}
# p car.delete(:mileage)
# p car[:color]

# Use Hash#each to iterate over numbers and print each element's key/value pair.

numbers = {
  high:   100,
  medium: 50,
  low:    10
}
# numbers.each do |k, v|
#   p "A #{k} number is #{v}."
# end
# Use Enumerable#map to iterate over numbers and return an array containing each number divided by 2. Assign the returned array to a variable named half_numbers and print its value using #p.
half_numbers = numbers.map do |k, v|
                 v / 2
               end
# p half_numbers

# Use Hash#select to iterate over numbers and return a hash containing only key-value pairs where the value is less than 25. Assign the returned hash to a variable named low_numbers and print its value using #p.
low_numbers = numbers.select! do |k, v|
  v < 25
end
# p low_numbers
# p numbers
# Create a nested hash
# Car

# type	color	year
# sedan	blue	2003
# Truck

# type	color	year
# pickup	red	1998

# vehicles = {
#   "car" => { 
#     type: "sedan",
#     color: "blue",
#     year: 2003
#   },
#   "truck" => { 
#      type: "pickup",
#      color: "red",
#      year: 1998
#     }
#   }
#   # p vehicles
# A: 
# {
#   car:   { type: 'sedan', color: 'blue', year: 2003 },
#   truck: { type: 'pickup', color: 'red', year: 1998 }
# }
# Rewrite car as a nested array containing the same key-value pairs.

car = {
  type:  'sedan',
  color: 'blue',
  year:  2003
}
car = [[:type, 'sedan'], [:color, 'blue'], [:year,  2003]]
p car[0]