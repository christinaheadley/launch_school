#1 Given a hash of family members, with keys as the title and an array of names as the values, use Ruby's built-in select method to gather only immediate family members' names into a new array.

family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate =  family.select { |k| (k == :sisters) || (k == :brothers)}
immediate.values.flatten

#2 Look at Ruby's merge method. Notice that it has two versions. What is the difference between merge and merge!? Write a program that uses both and illustrate the differences.

h1 = {a: 16, b: 24, c: 32}
h2 = {b: 20, d: 32}
h1.merge(h2)
h1
h1.merge!(h2)
h1

#3 Using some of Ruby's built-in Hash methods, write a program that loops through a hash and prints all of the keys. Then write a program that does the same thing except printing the values. Finally, write a program that prints both.

h = {:a=>16, :b=>20, :c=>32, :d=>32}
h.keys
h.values
h

#4Given the following expression, how would you access the name of the person?

person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
person[:name]

#5 What method could you use to find out if a Hash contains a specific value in it? Write a program to demonstrate this use.

h = {:a=>16, :b=>20, :c=>32, :d=>32}
h.value?(16)

#6 
x = "hi there"
my_hash = {x: "some value"}
my_hash2 = {x => "some value"}
# syntax - new syntax v hash rocket
#A: "The first hash that was created used a symbol x as the key. The second hash used the string value of the x variable as the key.""
my_hash
my_hash2
--------->
{:x=>"some value"}
{"hi there"=>"some value"}