# string_scramble.rb

# Using the Ruby language, have the function StringScramble(str1,str2) take both
# parameters being passed and return the string true if a portion of str1
# characters can be rearranged to match str2, otherwise return the string false.
# For example: if str1 is "rkqodlw" and str2 is "world" the output should return
# true. Punctuation and symbols will not be entered with the parameters.

def string_scramble(str1, str2)
  str2.each_char do |char|
    return false if str2.count(char) > str1.count(char)
  end
  true
end

p string_scramble("rkqodlw", 'world') # t
p string_scramble("cdore", "coder") # t
p string_scramble("h3llko", "hello") # f
