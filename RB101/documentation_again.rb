# 1. Locate the ruby documentation for methods File::path and File#path. How are they different?

# File::path can be used to access path from outside the module.  ::CONSTANT
# File#path indicates a method inside a File object.              #METHOD

# from ruby style guide:
# Double Colons
# Use :: only to reference constants (this includes classes and modules) and constructors (like Array() or Nokogiri::HTML()). Do not use :: for regular method calls.

# # bad
# SomeClass::some_method
# some_object::some_method

# # good
# SomeClass.some_method
# some_object.some_method
# SomeModule::SomeClass::SOME_CONST
# SomeModule::SomeClass()

# Colon Method Definition
# Do not use :: to define class methods.

# # bad
# class Foo
#   def self::some_method
#   end
# end

# # good
# class Foo
#   def self.some_method
#   end
# end

# A:
# "Both methods can be found on the documentation page for the File class in the Core API section. File::path is a class method, while File#path is an instance method.

# Discussion
# Class methods are called on the class, while instance methods are called on objects. Thus:

# Copy Code
# puts File.path('bin')
# calls the class method File::path since we're calling it on the File class, while:

# Copy Code
# f = File.new('my-file.txt')
# puts f.path
# calls the instance method File#path since we're calling it on an object of the File class, namely f.

# Pay attention when reading the documentation; make sure you are using a class method when you need a class method, and an instance method when you need an instance method."

# 2. Assume you have the following code:

# require 'date'

# puts Date.civil                 #2021-08-19  wrong -- puts "-4712-01-01" (4712 BCE is the start of current Julian Period. --SO)
# puts Date.civil(2016)           #2006-01-01
# puts Date.civil(2016, 5)        #2006-05-01
# puts Date.civil(2016, 5, 13)    #2006-05-13
# What will each of the 4 puts statements print?

# https://ruby-doc.org/stdlib-3.0.1/libdoc/date/rdoc/Date.html
# A: The documentation for Date::civil (note that it is a class method) shows that its signature is:

# civil([year=-4712[, month=1[, mday=1[, start=Date::ITALY]]]]) → date

# This signature uses [] to show that all of the arguments are optional. This is only a documentation convention; the brackets should not be included in your program.

# 3. def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6)
# #my answer is wrong: argument error , expected 4 got 3

# From https://docs.ruby-lang.org/en/2.4.0/syntax/calling_methods_rdoc.html:
# Default Positional Arguments
# When the method defines default arguments you do not need to supply all the arguments to the method. Ruby will fill in the missing arguments in-order.

# First we'll cover the simple case where the default arguments appear on the right. Consider this method:

# def my_method(a, b, c = 3, d = 4)
#   p [a, b, c, d]
# end
# Here c and d have default values which ruby will apply for you. If you send only two arguments to this method:

# my_method(1, 2)
# You will see ruby print [1, 2, 3, 4].

# If you send three arguments:

# my_method(1, 2, 5)
# You will see ruby print [1, 2, 5, 4]

# Ruby fills in the missing arguments from left to right.

# 4. use bsearch
# a = [1, 4, 8, 11, 15, 19]
# p a.bsearch { |n| n > 8 }

# A:
# value = a.bsearch { |element| element > 8 }
# puts value # => 11
# For more information on what #bsearch does and why it is faster, see the Wikipedia article on the Binary search algorithm. #bsearch uses this algorithm.
# 5. What do each of these puts statements output?

  # a = %w(a b c d e)         #["a", "b", "c", "d", "e"]
  # puts a.fetch(7)            #Index error
  # puts a.fetch(7, 'beats me')      #"beats me"
  # puts a.fetch(7) { |index| index**2 }   #argument errorWRONG  A: 49

#6.  What does this code print?

# 5.step(to: 10, by: 3) { |value| puts value } 
# 5 
# 8
# step is a method of Numeric class (step method in Range class shows different example)

# 7.Use irb to run the following code:

# s = 'abc'
# puts s.public_methods.inspect      #puts s.private_methods.inspect(my answer-- need to verify)

# You should find that it prints a list of all of the public methods available to the String s; this includes not only those methods defined in the String class, but also methods that are inherited from Object (which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.

# How would you modify this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.

# Kernel::BasicObject::Object::String

# irb(main):005:0> puts s.private_methods.inspect
# [:initialize, :initialize_copy, :timeout, :irb_binding, :DelegateClass, :sprintf, :format, :Integer, :Float, :String, :Array, :Hash, :local_variables, :rand, :srand, :trap, :readlines, :p, :exec, :exit!, :raise, :fail, :global_variables, :__method__, :__callee__, :__dir__, :require_relative, :autoload, :autoload?, :require, :eval, :iterator?, :block_given?, :catch, :throw, :loop, :abort, :URI, :system, :binding, :warn, :spawn, :trace_var, :untrace_var, :at_exit, :`, :select, :Rational, :Complex, :respond_to_missing?, :caller, :caller_locations, :test, :gem, :gets, :fork, :proc, :lambda, :exit, :set_trace_func, :initialize_clone, :initialize_dup, :pp, :sleep, :gem_original_require, :load, :syscall, :open, :printf, :print, :putc, :puts, :readline, :method_missing, :singleton_method_added, :singleton_method_removed, :singleton_method_undefined]
# => nil
# irb(main):006:0> puts s.public_methods(false).inspect
# [:unicode_normalize, :unicode_normalize!, :ascii_only?, :to_r, :unpack, :encode!, :unpack1, :%, :include?, :*, :+, :count, :partition, :+@, :-@, :<=>, :<<, :to_c, :==, :===, :sum, :=~, :next, :[], :casecmp, :casecmp?, :insert, :[]=, :match, :match?, :bytesize, :empty?, :eql?, :succ!, :next!, :upto, :index, :rindex, :replace, :clear, :chr, :getbyte, :setbyte, :scrub!, :scrub, :undump, :byteslice, :freeze, :inspect, :capitalize, :upcase, :dump, :downcase!, :swapcase, :downcase, :hex, :capitalize!, :upcase!, :lines, :length, :size, :codepoints, :succ, :split, :swapcase!, :bytes, :oct, :prepend, :grapheme_clusters, :concat, :start_with?, :reverse, :reverse!, :to_str, :to_sym, :crypt, :ord, :strip, :end_with?, :to_s, :to_i, :to_f, :center, :intern, :gsub, :ljust, :chars, :delete_suffix, :sub, :rstrip, :scan, :chomp, :rjust, :lstrip, :chop!, :delete_prefix, :chop, :sub!, :gsub!, :delete_prefix!, :chomp!, :strip!, :lstrip!, :rstrip!, :squeeze, :delete_suffix!, :tr, :tr_s, :delete, :each_line, :tr!, :tr_s!, :delete!, :squeeze!, :slice, :each_byte, :each_char, :each_codepoint, :each_grapheme_cluster, :b, :slice!, :rpartition, :encoding, :force_encoding, :valid_encoding?, :hash, :unicode_normalized?, :encode]
# => nil
# A:
# If you look at the String documentation, you won't find any mention of #public_methods. However, it is clearly available: it runs in our example. How is that? Where do you need to go to find the documentation for #public_methods?

# The issue here is that ruby is an object oriented language. Every value in Ruby is an object, which means that it has an associated class, and that class in turn has a superclass, or parent. Every class that inherits from a superclass also inherits all of its methods.

# In the String documentation, if you look at the "Parent" box on the left side, you will see that the parent of the String class is Object; in fact, this is true for most classes in the ruby documentation. What this means for the String class, though, is that String inherits from Object, so every method in Object is also available in String, though perhaps in modified form.

# Since #public_methods is not described in the String documentation, we obviously must look elsewhere. One of two additional places you can look for method descriptions is in the documentation for the parent. Go ahead and click Object in the Parent box to go to the Object class documentation.

# Sure enough, there's #public_methods (make sure you don't select #public_method) over on the left hand side under Methods. Go ahead and click #public_methods to scroll down to the documentation for the method.

# Once you have the documentation in front of you, you can see that #public_methods takes an optional argument all. If that value is true or omitted, it returns a list of all public methods available to the object (our s String in this case); if all is false, #public_methods limits the output to just those methods in the object that called #public_methods; for our purposes, this means just the methods defined directly in the String class.

# Thus, our solution to the exercise is to modify the second line of code to include a false argument for #public_methods.

# The phrase "though perhaps in modified form" from above is there because a class can override the members of its superclass. In fact, most of the Core and Standard Library API classes do just that. For example, String overrides Object#==. What this means for you is that you must first look at the documentation for your class before looking at the documentation for the superclass. Even if you know that the superclass has a particular method, you should always check that it isn't being overridden by the subclass.
# 8.
# a = [5, 9, 3, 11]
# puts a.min
# puts a.min(2)
# min(n) {| a,b | block } → array
# Returns the object in ary with the minimum value. The first form assumes all objects implement Comparable; the second uses the block to return a <=> b.

# ary = %w(albatross dog horse)
# ary.min                                   #=> "albatross"
# ary.min { |a, b| a.length <=> b.length }  #=> "dog"
# If the n argument is given, minimum n elements are returned as an array.
# ary = %w[albatross dog horse]
# ary.min(2)                                  #=> ["albatross", "dog"]
# ary.min(2) {|a, b| a.length <=> b.length }  #=> ["dog", "horse"]

# A:If you look at the Array documentation for version 2.3.0, you won't find any mention of #min, nor will you find it in the Parent class, Object. It's obvious, though, that it exists since the original code works. Where, then, can you find the documentation for #min?

# Some languages have a feature called multiple inheritance (aka, MI). With MI, as it's often abbreviated, a class can inherit from two or more immediate superclasses. Inheriting from multiple superclasses, though, has pitfalls. To avoid these pitfalls, Ruby doesn't allow MI.

# Ruby uses something like MI, but without the worst of the pitfalls. It's called mix-in modules, or, more simply, mix-ins. Mix-ins provide a way for classes of different types to share behaviors without using inheritance.

# A class can use a mix-in module by using the include method. Once included, all the mix-in's methods become available to objects of the class.

# One of the most commonly used mix-ins in ruby is the Enumerable module; it provides much of the functionality needed to iterate through collections such as Array, Hash, and Range. If you look on the left-hand side of the documentation for the Array class, you will see Enumerable listed under the heading of Included Modules. Click on Enumerable to view the Enumerable documentation.

# Once you have the Enumerable documentation in front of you, scroll down to the documentation for #min. You can see from this documentation that #min takes an optional argument that specifies how many values it should return -- note that you have to look at the examples to learn what the optional argument does. In our case, we want two values, so we alter our call to #min by adding the argument 2.

# How do you know whether to look at the Included Modules or the Parent class for methods you can't find in the main documentation for a class? The truth is, there is no easy way to tell; you need to search both until you find the documentation you need. Google can be your friend, as can the search feature on the ruby-doc.org site, but finding the right documentation isn't easy.
# 9. Sometimes, the documentation is going to leave you scratching your head.

# In a very early assignment at Launch School, you are tasked with writing a program that loads some text messages from a YAML file. We do this with YAML::load_file:

# require 'yaml'
# MESSAGES = YAML.load_file('calculator_messages.yml')
# Find the documentation for YAML::load_file.
#should use .safe_load_file for yaml
# yaml::load, load_stream, or load_documents
#http://yaml4r.sourceforge.net/doc/page/loading_yaml_documents.htm#:~:text=The%20YAML%3A%3Aload%20method,as%20a%20data%20serialization%20language.
# A: https://ruby-doc.org/stdlib-3.0.0/libdoc/psych/rdoc/Psych.html