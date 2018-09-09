# non_repeating_character.rb

# Using the Ruby language, have the function NonrepeatingCharacter(str) take the
# str parameter being passed, which will contain only alphabetic characters and
# spaces, and return the first non-repeating character. For example: if str is
# "agettkgaeee" then your program should return k. The string will always
# contain at least one character and there will always be at least one non-
# repeating character.

def non_repeating_character(str)
  str.each_char do |char|
    return char if str.count(char) == 1
  end
end

p non_repeating_character("agettkgaeee") # k
p non_repeating_character("abcdef") # a
p non_repeating_character("hello world hi hey") # w
p non_repeating_character("h") # h
p non_repeating_character("hoh") # o
