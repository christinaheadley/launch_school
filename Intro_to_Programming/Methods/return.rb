def add_three(number)
  return number + 3
  number + 4
end

returned_value = add_three(4)
puts returned_value

def first
  puts "first method"
end

def second
  first
  puts "second method"
end

second
puts "main method"