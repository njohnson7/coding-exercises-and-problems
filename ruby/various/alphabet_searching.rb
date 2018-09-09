# alphabet_searching.rb

# Using the Ruby language, have the function AlphabetSearching(str) take the str
# parameter being passed and return the string true if every single letter of
# the English alphabet exists in the string, otherwise return the string false.
# For example: if str is "zacxyjbbkfgtbhdaielqrm45pnsowtuv" then your program
# should return the string true because every character in the alphabet exists
# in this string even though some characters appear more than once.

def alphabet_searching(str)
  ('a'..'z').each do |letter|
    return 'false' if str.downcase.count(letter) < 1
  end
  'true'
end

p alphabet_searching("zacxyjbbkfgtbhdaielqrm45pnsowtuv") # t
p alphabet_searching("abcdefghijklmnopqrstuvwxyyyy") # f
p alphabet_searching("abc123456kmo") # f
