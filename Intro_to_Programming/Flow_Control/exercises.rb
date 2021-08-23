# irb(main):001:0> "abc" < "abd"
# => true
# irb(main):002:0> "abc" < "abC"
# => false
# irb(main):003:0> "47" > "111111111"
# => true
# irb(main):004:0> 
# irb(main):005:0> 
# irb(main):006:0> (32 * 4) >= 129
# => false
# irb(main):007:0> (32 / 4) >= 129
# => false
# irb(main):008:0> 32 / 4
# => 8
# irb(main):009:0> 8 > 129
# => false
# irb(main):010:0> false != !true
# => false
# irb(main):011:0> true == 4
# => false
# irb(main):012:0> false == (847 == '874')
# => true
# irb(main):013:0> (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false
# => true
# irb(main):014:1* (!(100 / 5)
# irb(main):015:1*   ^[^[
# irb(main):016:1*   ^[q
# irb(main):017:1*   q
# irb(main):018:1*   ^C
# irb(main):014:1* p (!(100 / 5)
# irb(main):015:1>   
# 2 Write a method that takes a string as argument. The method should return a new, all-caps version of the string, only if the string is longer than 10 characters. Example: change "hello world" to "HELLO WORLD". (Hint: Ruby's String class has a few methods that would be helpful. Check the Ruby Docs!)
# def long_caps(string)
#   string.upcase if string.length > 10
# end
# p long_caps("hi")
# p long_caps("hello world")
# 3 Write a program that takes a number from the user between 0 and 100 and reports back whether the number is between 0 and 50, 51 and 100, or above 100.
# puts "Enter a pos number"
# a = gets.chomp.to_i

# # a = 88
# case a
# when 0..50
#   puts "Your number is between 0 and 50."
# when  50..100
#   puts "Your number is between 50 and 100."
# else
#   puts "Your number is above 100."
# end
# capacity = 20
# case capacity
# when 0
#   "You ran out of gas."
# when 1..20
#   "The tank is almost empty. Quickly, find a gas station!"
# when 21..70
#   "You should be ok for now."
# when 71..100
#   "The tank is almost full."
# else
#   "Error: capacity has an invalid value (#{capacity})"
# end

# a = 5

# case a
# when 5
#   puts "a is 5"
# when 6
#   puts "a is 6"
# else
#   puts "a is neither 5, nor 6"
# end
irb(main):028:0> '4' == 4 ? puts("TRUE") : puts("FALSE")
FALSE
=> nil
irb(main):029:0> # Snippet 2
=> nil
irb(main):030:0> x = 2
=> 2
irb(main):031:1* if ((x * 3) / 2) == (4 + 4 - x - 3)
irb(main):032:1*   puts "Did you get it right?"
irb(main):033:1* else
irb(main):034:1*   puts "Did you?"
irb(main):035:0> end
Did you get it right?
=> nil
irb(main):036:0> y = 9
=> 9
irb(main):037:0> x = 10
=> 10
irb(main):038:1* if (x + 1) <= (y)
irb(main):039:1*   puts "Alright."
irb(main):040:1*   elsif (x + 1) >= (y)
irb(main):041:1*     puts "Alright now!"
irb(main):042:1*     elsif (y + 1) == x
irb(main):043:1*       puts "ALRIGHT NOW!"
irb(main):044:1* else
irb(main):045:1*   puts "Alrighty!"
irb(main):046:0> end
Alright now!
=> nil
irb(main):047:0> (32 * 4) >= "129"
Traceback (most recent call last):
        5: from /Users/devacct/.rbenv/versions/2.7.2/bin/irb:23:in `<main>'
        4: from /Users/devacct/.rbenv/versions/2.7.2/bin/irb:23:in `load'
        3: from /Users/devacct/.rbenv/versions/2.7.2/lib/ruby/gems/2.7.0/gems/irb-1.2.6/exe/irb:11:in `<top (required)>'
        2: from (irb):47
        1: from (irb):47:in `>='
ArgumentError (comparison of Integer with String failed)
irb(main):048:0> 847 == '874'
=> false
irb(main):049:0> '847' < '846'
=> false
irb(main):050:0> '847' > '846'
=> true
irb(main):051:0> '847' > '8478'
=> false
irb(main):052:0> '847' < '8478'
=> true
irb(main):053:0> '847' > '846'

