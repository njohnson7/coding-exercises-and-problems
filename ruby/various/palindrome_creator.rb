# palindrome_creator.rb

# Using the Ruby language, have the function PalindromeCreator(str) take the str
# parameter being passed and determine if it is possible to create a palindromic
# string of at least 3 characters by removing 1 or 2 characters. For example: if
# str is "abjchba" then you can remove the characters jc to produce "abhba"
# which is a palindrome. For this example your program should return the two
# characters that were removed with no delimiter and in the order they appear in
# the string, so jc. If 1 or 2 characters cannot be removed to produce a
# palindrome, then return the string not possible. If the input string is
# already a palindrome, your program should return the string palindrome.

# The input will only contain lowercase alphabetic characters. Your program
# should always attempt to create the longest palindromic substring by removing
# 1 or 2 characters (see second sample test case as an example). The 2
# characters you remove do not have to be adjacent in the string.

def palindrome_creator(str)
  return 'palindrome' if str == str.reverse
  return 'not possible' if str.size <= 3
  substrings = []
  (0...str.size).each do |idx|
    current = str[0...idx] + str[idx + 1..-1]
    if current == current.reverse
      return str[idx]
    else
      substrings << [str[idx], idx, current]
    end
  end
  return 'not possible' if substrings.first.last.size <= 3
  substrings.each do |arr|
    substring = arr.last
    (0...substring.size).each do |idx|
      current = substring[0...idx] + substring[idx + 1..-1]
      if current == current.reverse
        if arr[1] <= idx
          return arr.first + substring[idx]
        else
          return substring[idx] + arr.first
        end
      end
    end
  end
  'not possible'
end

p palindrome_creator("abjchba") # 'jc'
p palindrome_creator("mmop") # 'not possible'
p palindrome_creator("kjjjhjjj") # 'k'
p palindrome_creator("abcba") # 'palindrome'
p palindrome_creator("hgkmmo")
p palindrome_creator("aaabaaaj")
p palindrome_creator("annak")
