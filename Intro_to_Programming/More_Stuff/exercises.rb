# Write a program that checks if the sequence of characters "lab" exists in the following strings. If it does exist, print out the word.

def contains_lab?(word)
  if word =~ /lab/
    # p word
  end
end

contains_lab?("laboratory")
contains_lab?("experiment")
contains_lab?("Pans Labyrinth")
contains_lab?("elaborate")
contains_lab?("polar bear")

#2 What will the following program print to the screen? What will it return?

def execute(&block)
  block # needs to be block.call for response to print
end

execute { puts "Hello from inside the execute method!" }

