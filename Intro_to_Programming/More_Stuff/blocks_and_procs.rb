https://launchschool.com/books/ruby/read/more_stuff#blocksandprocs

We talked about blocks earlier in this book but we're going to go a little deeper and show you some of the power of blocks. Blocks, like parameters, can be passed into a method just like normal variables. This isn't incredibly hard, and it's very powerful. Let's look at how we accomplish this.

# passing_block.rb

def take_block(&block)
  block.call
end

take_block do
  puts "Block being called in the method!"
end
This is a pretty simple example. The ampersand (&) in the method definition tells us that the argument is a block. You could name it anything you wanted. The block must always be the last parameter in the method definition. When we're ready to use the method, we call it like any other method: take_block. The only difference is that because this method can accept a block, we can pass in a block of code using do/end. As you can see, we've been using blocks all along, but this is the first time we've defined our own method that takes a block as an argument.

Let's make this more complex. Say we wanted to pass an argument to the method as well.

# passing_block.rb

def take_block(number, &block)
  block.call(number)
end

number = 42
take_block(number) do |num|
  puts "Block being called in the method! #{num}"
end
Here we are passing the numberinto the take_block method and using it in our block.call. You can see the amount of flexibility and the myriad possibilities that come into play when using blocks.

Procs are blocks that are wrapped in a proc object (we'll cover objects in our object oriented programming book) and stored in a variable to be passed around. This is how you define a proc.

# proc_example.rb

talk = Proc.new do
  puts "I am talking."
end

talk.call
Procs can also take arguments if specified.

# proc_example.rb

talk = Proc.new do |name|
  puts "I am talking to #{name}"
end

talk.call "Bob"
Procs can be passed into methods. Let's take our previous passing_block.rb code and modify the method to take a proc instead. We'll add some more functionality too.

#passing_proc.rb

def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |number|
  puts "#{number}. Proc being called in the method!"
end

take_proc(proc)
Using procs gives us the added flexibility to be able to reuse blocks in more than one place without having to type them out every time.