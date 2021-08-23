# You come across the following code. What errors does it raise for the given examples and what exactly do the error messages mean?

  # def find_first_nonzero_among(numbers)
  #   numbers.each do |n|
  #     return n if n.nonzero?
  #   end
  # end
  
  # # # Examples
  
  # # p find_first_nonzero_among([0, 0, 1, 0, 2, 0])
  # p find_first_nonzero_among([1]).class
  # # num = 12
  # # p 0.nonzero?
# Our predict_weather method should output a message indicating whether a sunny or cloudy day lies ahead. However, the output is the same every time the method is invoked. Why? Fix the code so that it behaves as expected.

# def predict_weather
#   sunshine = [true, false].sample

#   if sunshine
#     puts "Today's weather will be sunny!"
#   else
#     puts "Today's weather will be cloudy!"
#   end
# end
# predict_weather

# When the user inputs 10, we expect the program to print The result is 50!, but that's not the output we see. Why not?

def multiply_by_five(n)
  n * 5
end

# puts "Hello! Which number would you like to multiply by 5?"
# number = gets.chomp.to_i

# puts "The result is #{multiply_by_five(number)}!"
pets = { cat: 'fluffy', dog: ['sparky', 'fido'], fish: 'oscar' }

pets[:dog] << 'bowser'

# p pets #=> {:cat=>"fluffy", :dog=>"bowser", :fish=>"oscar"}
# numbers = [5, 2, 9, 6, 3, 1, 8]

# even_numbers = numbers.select do |n|
#   n if n.even?
# end

# p even_numbers # expected output: [2, 6, 8]

# You want to have a small script delivering motivational quotes, but with the following code you run into a very common error message: no implicit conversion of nil into String (TypeError). What is the problem and how can you fix it?

# def get_quote(person)
#   if person == 'Yoda'
#     'Do. Or do not. There is no try.'
#   elsif person == 'Confucius'
#     'I hear and I forget. I see and I remember. I do and I understand.'
#   elsif person == 'Einstein'
#     'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# puts 'Confucius says:'
# puts '"' + get_quote('Confucius') + '"'
# puts get_quote('Confucius')
# or:
# def get_quote(person)
#   if person == 'Yoda'
#     return 'Do. Or do not. There is no try.'
#   end

#   if person == 'Confucius'
#     return 'I hear and I forget. I see and I remember. I do and I understand.'
#   end

#   if person == 'Einstein'
#     return 'Do not worry about your difficulties in Mathematics. I can assure you mine are still greater.'
#   end
# end

# Since our original code did not have an explicit return statement, the return value is the evaluated result of the last line executed. The last line is an if statement, which returns the evaluated result of the branch whose condition evaluates as true, or nil if there is no such branch. When we passed 'Confucius' or 'Yoda' in as the argument, the condition person == 'Einstein' evaluated to false, so the last if statement evaluated to nil. This caused our original method to return nil every time an argument other than 'Einstein' is passed in.

# balance = 0

# # Here's what you earned and spent during the first three months.

# january = {
#   income: [ 1200, 75 ],
#   expenses: [ 650, 140, 33.2, 100, 26.9, 78 ]
# }

# february = {
#   income: [ 1200 ],
#   expenses: [ 650, 140, 320, 46.7, 122.5 ]
# }

# march = {
#   income: [ 1200, 10, 75 ],
#   expenses: [ 650, 140, 350, 12, 59.9, 2.5 ]
# }

# # Let's see how much you've got now...

# def calculate_balance(month)
#   plus  = month[:income].sum
#   minus = month[:expenses].sum

#   plus - minus
# end

# [january, february, march].each do |month|
#   balance += calculate_balance(month)
# end

# # puts balance
# colors = ['red', 'yellow', 'purple', 'green', 'dark blue', 'turquoise', 'silver', 'black']
# things = ['pen', 'mouse pad', 'coffee mug', 'sofa', 'surf board', 'training mat', 'notebook']

# # colors.shuffle!
# # things.shuffle!

# i = 0
# loop do
#   # break if i >= colors.length || i >= things.length   
#   break if i >= [colors.length, things.length].min
#   if i == 0
#     puts 'I have a ' + colors[i] + ' ' + things[i] + '.'
#   else
#     puts 'And a ' + colors[i] + ' ' + things[i] + '.'
#   end
  
#   i += 1
# end

# Given a String of digits, our digit_product method should return the product of all digits in the String argument. You've been asked to implement this method without using reduce or inject.
# When testing the method, you are surprised by a return value of 0. What's wrong with this code and how can you fix it?

# def digit_product(str_num)
#   digits = str_num.chars.map { |n| n.to_i }
#   product = 1

#   digits.each do |digit|
#     product *= digit
#   end

#   product
# end

# p digit_product('12345')
# We started writing an RPG game, but we already run into an error message. Find the problem and fix it.
# Each player starts with the same basic stats.

# player = { strength: 10, dexterity: 10, charisma: 10, stamina: 10 }

# # Then the player picks a character class and gets an upgrade accordingly.

# character_classes = {
#   warrior: { strength:  20 },
#   thief:   { dexterity: 20 },
#   scout:   { stamina:   20 },
#   mage:    { charisma:  20 }
# }

# puts 'Please type your class (warrior, thief, scout, mage):'
# input = gets.chomp.downcase.to_sym

# player.merge!(character_classes[input])
#OR player = player.merge(character_classes[input.to_sym])
# puts input
# puts input.class
# puts 'Your character stats:'
# puts player

# h = {foo: 0, bar: 1, baz: 2}
# h1 = {bat: 3, bar: 4}
# p h.merge!(h1)