Regex stands for regular expression. A regular expression is a sequence of characters that form pattern matching rules, and is then applied to a string to look for match.

use the =~ operator to see if we have a match in our regular expression. Let's say we are looking for the letter "b" in a string "powerball". Here's how we'd implement this using the =~ operator

irb :001 > "powerball" =~ /b/
=> 5

On top of the =~ operator, we can use the match method to perform regex comparisons as well. This method returns a MatchData object that describes the match or nil if there is no match.
  
irb :001 > /b/.match("powerball")
=> #<MatchData "b">