# palindrome.rb

# Have the function Palindrome(str) take the str parameter being passed and
# return the string true if the parameter is a palindrome, (the string is the
# same forward as it is backward) otherwise return the string false. For
# example: "racecar" is also "racecar" backwards. Punctuation and numbers will
# not be part of the string.

def palindrome(str)
  str = str.split.join
  str == str.reverse
end

puts palindrome("racecar")
puts palindrome("never odd or even")
puts palindrome('eye')
puts palindrome('')
puts palindrome('cereal')
