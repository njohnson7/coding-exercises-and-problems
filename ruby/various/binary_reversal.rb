# binary_reversal.rb

# Using the Ruby language, have the function BinaryReversal(str) take the str
# parameter being passed, which will be a positive integer, take its binary
# representation, reverse that string of bits, and then finally return the new
# reversed string in decimal form. For example: if str is "47" then the binary
# version of this integer is 00101111. Your program should reverse this binary
# string which then becomes: 11110100 and then finally return the decimal
# version of this string, which is 244.

# Doesn't work on coderbyte b/c binary strings aren't evenly divisible by 8
def binary_reversal(str)
  str.to_i.to_s(2).reverse.to_i(2).to_s
end

p binary_reversal('47') # '244'
p binary_reversal('213') # '171'
p binary_reversal('4567') # '60296'
puts


# Alternate solution that works:
def binary_reversal(str)
  num = str.to_i.to_s(2)
  num.prepend('0') until num.size % 8 == 0
  num.reverse.to_i(2).to_s
end

p binary_reversal('47') # '244'
p binary_reversal('213') # '171'
p binary_reversal('4567') # '60296'
