# binary_converter.rb

# Using the Ruby language, have the function BinaryConverter(str) return the
# decimal form of the binary value. For example: if 101 is passed return 5, or
# if 1000 is passed return 8.

def binary_converter(str)
  result = 0
  str.reverse.each_char.with_index do |digit, power|
    if digit == '1'
      result += 2**power
    end
  end
  result.to_s
end

p binary_converter('101') # '5'
p binary_converter('1000') # '8'
p binary_converter("100101") # '37'
p binary_converter("011") # '3'
puts


# Alternate solution:
def binary_converter(str)
  str.to_i(2).to_s
end

p binary_converter('101') # '5'
p binary_converter('1000') # '8'
p binary_converter("100101") # '37'
p binary_converter("011") # '3'
