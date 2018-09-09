# number_encoding.rb

# Using the Ruby language, have the function NumberEncoding(str) take the str
# parameter and encode the message according to the following rule: encode every
# letter into its corresponding numbered position in the alphabet. Symbols and
# spaces will also be used in the input. For example: if str is "af5c a#!" then
# your program should return 1653 1#!.

def number_encoding(str)
  result = ''
  str.downcase.each_char do |char|
    if char =~ /[a-z]/
      result << (char.ord - 96).to_s
    else
      result << char
    end
  end
  result
end

p number_encoding("af5c a#!") # '1653 1#!'
p number_encoding("hello 45") # 85121215 45
p number_encoding("jaj-a") # 10110-1
