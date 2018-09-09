# number_addition.rb

# Using the Ruby language, have the function NumberSearch(str) take the str
# parameter, search for all the numbers in the string, add them together, then
# return that final number. For example: if str is "88Hello 3World!" the output
# should be 91. You will have to differentiate between single digit numbers and
# multiple digit numbers like in the example above. So "55Hello" and "5Hello 5"
# should return two different answers. Each string will contain at least one
# letter or symbol.

def number_addition(str)
  str.scan(/\d+/).map(&:to_i).reduce(:+) || 0
end

p number_addition("88Hello 3World!") # 91
p number_addition("55Hello")
p number_addition("5Hello 5")
p number_addition("75Number9")
p number_addition("10 2One Number*1*")
p number_addition("no numbers sorry**")
