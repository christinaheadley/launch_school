puts "Welcome"
puts "Enter a number"
num1 = gets
puts "Enter the operator: +, -, *, or /"
operator = gets.chomp
puts "Enter the second number"
num2 = gets
p operator
if operator == "+"
  puts num1.to_i + num2.to_i
elsif operator == "-"
  puts num1.to_i - num2.to_i
elsif operator == "*"
  puts num1.to_i * num2.to_i
elsif operator == "/"
  puts num1.to_f + num2.to_f
end
