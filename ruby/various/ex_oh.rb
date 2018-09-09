# ex_oh.rb

# Using the Ruby language, have the function ExOh(str) take the str parameter
# being passed and return the string true if there is an equal number of x's and
# o's, otherwise return the string false. Only these two letters will be entered
# in the string, no punctuation or numbers. For example: if str is "xooxxxxooxo"
# then the output should return false because there are 6 x's and 5 o's.

def ex_oh(str)
  str.downcase.count('x') == str.downcase.count('o')
end

puts ex_oh("xooxxxxooxo") # f
puts ex_oh("xooxxo") # t
puts ex_oh('x') # f
puts ex_oh('xOOxoX') # t
puts ex_oh('xOOxo') # f
