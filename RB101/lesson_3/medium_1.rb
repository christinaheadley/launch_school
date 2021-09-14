# 1. Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).

# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

# str = "The Flintstones Rock"
# 10.times do
#   str.prepend(" ")
#   puts str
# end
# A: 10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# 2. The result of the following statement will be an error:

# puts "the value of 40 + 2 is " + (40 + 2)
# Why is this and what are two possible ways to fix this?
# puts "the value of 40 + 2 is #{40 + 2}."
# puts "the value of 40 + 2 is " + (40 + 2).to_s + "."

# 3. Alan wrote the following method, which was intended to show all of the factors of the input number:

# def factors(number)
#   divisor = number
#   factors = []
#   begin
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end until divisor == 0
#   factors
# end
# Alyssa noticed that this will fail if the input is 0, or a negative number, and asked Alan to change the loop. How can you make this work without using begin/end/until? Note that we're not looking to find the factors for 0 or negative numbers, but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# What is the purpose of the number % divisor == 0 ?

# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?

# def factors(number)
#   if number <= 0
#     "Enter a positive number"
#   else
#     divisor = number
#     factor = []
#     while divisor >= 1
#       if number % divisor == 0
#         factor << (number / divisor) 
#       end
#       divisor -= 1
#     end
#     factor
#   end
# end
# p factors(8)
# p factors(0)

# def factors(number)
#   if number <= 0
#     p "Enter a positive number"
#   else
#     (1..number).step { |num| puts num if number % num == 0 }
#   end
# end

# A: 
# def factors(number)
#   divisor = number
#   factors = []
#   while divisor > 0 do
#     factors << number / divisor if number % divisor == 0
#     divisor -= 1
#   end
#   factors
# end
# p factors(8)
# p factors(0)

# limit = 15
# def fib(first_num, second_num, limit)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0, 1, limit)
# puts "result is #{result}"

# 6.What is the output of the following code?
# answer = 42

# def mess_with_it(some_number)
#   some_number += 8
# end

# p new_answer = mess_with_it(answer)

# p answer - 8
# REDO

# 7. 
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end

mess_with_demographics(munsters)

# 8 Method calls can take expressions as arguments. Suppose we define a method called rps as follows, which follows the classic rules of rock-paper-scissors game, but with a slight twist that it declares whatever hand was used in the tie as the result of that tie.

def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end
# What is the result of the following call?

# puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# rps(rps("rock", "paper"), rps("rock", "scissors"))
# rps("rock", "paper"), rps("rock", "scissors")
# paper, rock
# paper

# rps(rps("paper"), rps("rock", "scissors")), "rock")
# rps(rps("paper"), ("scissors", "rock")
# rps(rps("paper"), ("rock")
# rps("paper")

# 9. Consider these two simple methods:
def foo(param = "no")
  "yes"
end
foo = "no"

def bar(param = "no")
  param == "no" ? "yes" : "no"
end
# What would be the return value of the following method invocation?
p bar(foo) 
# --same as:  
p bar(foo())
# unless foo variable declared
# REDO # yes
# infers method