# Write an if statement that prints "The sun is so bright!" if sun equals 'visible'.
sun = ['visible', 'hidden'].sample
# if sun == "visible"
#   puts "The sun is so bright!"
# end
# Write an unless statement that prints "The clouds are blocking the sun!" unless sun equals 'visible'.

# unless sun == 'visible'
#   puts "The clouds are blocking the sun!"
# end

# Write an if statement that prints "The sun is so bright!" if sun equals visible. Also, write an unless statement that prints "The clouds are blocking the sun!" unless sun equals visible.

# When writing these statements, take advantage of Ruby's expressiveness and use statement modifiers instead of an if...end statement to print results only when some condition is met or not met.

# puts "The sun is so bright!" if sun == "visible"
# puts "The clouds are blocking the sun!" unless sun == 'visible'

# Write a ternary operator that prints "I'm true!" if boolean equals true and prints "I'm false!" if boolean equals false.
boolean = [true, false].sample
# boolean ? (puts "I'm true!") : (puts "I'm false!")
# A: boolean ? puts("I'm true!") : puts("I'm false!")

# number = 7

# if number
#   puts "My favorite number is #{number}."
# else
#   puts "I don't have a favorite number."
# end

# Write a case statement that prints "Go!" if stoplight equals 'green', "Slow down!" if stoplight equals 'yellow', and "Stop!" if stoplight equals 'red'.
stoplight = ['green', 'yellow', 'red'].sample
# case stoplight
# when "green"
#   puts "GO"
# when "yellow"
#   puts "Slow down!"
# when "red"
#   puts "Stop"
# end
# if stoplight == "green"
#   puts "GO"
# elsif stoplight == "yellow"
#   puts "Slow down!"
# elsif stoplight == "red"
#   puts "Stop"
# end
# Write an if statement that returns "Be productive!" if status equals 'awake' and returns "Go to sleep!" otherwise. Then, assign the return value of the if statement to a variable and print that variable.
# def return_variable
# status = ['awake', 'tired'].sample
#   if status == 'awake'
#     "Be productive!"
#   else
#     "Go to sleep"
#   end
# end
# puts return_variable

# alert = if status == 'awake'
#   'Be productive!'
# else
#   'Go to sleep!'
# end

# puts alert

# number = rand(10)

# if number == 5
#   puts '5 is a cool number!'
# else
#   puts 'Other numbers are cool too!'
# end


stoplight = ['green', 'yellow', 'red'].sample

case stoplight
when 'green' then puts 'Go!' 
when 'yellow' then puts 'Slow down!'
else puts 'Stop!'
end