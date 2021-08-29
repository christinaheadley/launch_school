# Version 1
# puts "Welcome"
# puts "Enter a number"
# num1 = gets
# puts "Enter the operator: +, -, *, or /"
# operator = gets.chomp
# puts "Enter the second number"
# num2 = gets
# p operator
# if operator == "+"
#   puts num1.to_i + num2.to_i
# elsif operator == "-"
#   puts num1.to_i - num2.to_i
# elsif operator == "*"
#   puts num1.to_i * num2.to_i
# elsif operator == "/"
#   puts num1.to_f + num2.to_f
# end

# Version 2
# def prompt(message)
#   puts(">> #{message}")
# end

# def number_valid?(num)
#   num.to_i != 0
# end

# loop do
#   prompt("Welcome")
#   num1 = ''
#   # need to initialize bc if num1 is initialized inside the loop,
#   # it's scope not available outside of loop
#   loop do
#     prompt("Enter a number")
#     num1 = gets.chomp
#     if number_valid?(num1)
#       break
#     else
#       prompt("Invalid option. Enter a valid number.")
#     end
#   end
#   operator = ''
#   loop do
#     prompt("Enter the operator: +, -, *, or /")
#     operator = gets.chomp
#     # if operator == "+" || operator == "-" ||
#     # operator == "*" || operator == "/"
#     if %w(+ - * /).include?(operator)
#       break
#     else
#       prompt("Invalid option.")
#     end
#   end
#   num2 = ''
#   loop do
#     prompt("Enter the second number.")
#     num2 = gets.chomp
#     if number_valid?(num2)
#       break
#     else
#       prompt("Invalid option. Enter a valid number.")
#     end
#   end
#   result =  case operator
#             when "+"
#               num1.to_i + num2.to_i
#             when "-"
#               num1.to_i - num2.to_i
#             when "*"
#               num1.to_i * num2.to_i
#             when "/"
#               num1.to_f / num2.to_f
#             end
#   prompt("Answer: #{result}")
#   prompt("Would you like to go again?")
#   answer = gets.chomp.downcase
#   break unless answer.start_with?("y")
# end
# prompt("Goodbye")

#Version 3
require "yaml"
MESSAGES = YAML.load_file('calculator_messages.yml')
# puts MESSAGES.inspect

def prompt(message)
  puts(">> #{message}")
end

def number_valid?(num)
  /\d/.match(num)
end

loop do
  prompt(MESSAGES['welcome'])
  num1 = ''
  # need to initialize bc if num1 is initialized inside the loop,
  # it's scope not available outside of loop
  loop do
    prompt(MESSAGES['num1_text'])
    num1 = gets.chomp
    if number_valid?(num1)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end
  operator = ''
  loop do
    prompt(MESSAGES['operator_text'])
    operator = gets.chomp
    # if operator == "+" || operator == "-" ||
    # operator == "*" || operator == "/"
    if %w(+ - * /).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end
  num2 = ''
  loop do
    prompt(MESSAGES['num2_text'])
    num2 = gets.chomp
    if number_valid?(num2)
      break
    else
      prompt(MESSAGES['valid_num'])
    end
  end
  result =  case operator
            when "+"
              num1.to_f + num2.to_f
            when "-"
              num1.to_f - num2.to_f
            when "*"
              num1.to_f * num2.to_f
            when "/"
              num1.to_f / num2.to_f
            end
  prompt("Answer: #{result}")
  prompt(MESSAGES['again'])
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end
prompt(MESSAGES['bye'])
