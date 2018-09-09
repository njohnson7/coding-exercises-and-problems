# palindrome_two.rb

# Using the Ruby language, have the function PalindromeTwo(str) take the str
# parameter being passed and return the string true if the parameter is a
# palindrome, (the string is the same forward as it is backward) otherwise
# return the string false. The parameter entered may have punctuation and
# symbols but they should not affect whether the string is in fact a palindrome.
# For example: "Anne, I vote more cars race Rome-to-Vienna" should return true.

def palindrome_two(str)
  str = str.downcase.gsub(/[^a-z]/, '')
  str == str.reverse
end

p palindrome_two("Anne, I vote more cars race Rome-to-Vienna") # t
p palindrome_two("Noel - sees Leon") # t
p palindrome_two("A war at Tarawa!") # t
p palindrome_two("A war at Tarawat!") # f
