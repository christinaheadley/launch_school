# Kernel.p
# puts("hello world")
# require 'pry'
# def delete_words(words)
  
#   words.each {|str| words.delete(str)}
#   binding.pry
# end
# p delete_words(%w(scooby doo on channel two))

def extend_greeting(greeting)
  greeting + " there"
end

greeting = "hi"
extend_greeting(greeting)

puts extend_greeting(greeting)