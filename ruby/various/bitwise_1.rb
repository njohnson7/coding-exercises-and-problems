# bitwise_1.rb

# Using the Ruby language, have the function BitwiseOne(strArr) take the array
# of strings stored in strArr, which will only contain two strings of equal
# length that represent binary numbers, and return a final binary string that
# performed the bitwise OR operation on both strings. A bitwise OR operation
# places a 0 in the new string where there are zeroes in both binary strings,
# otherwise it places a 1 in that spot. For example: if strArr is ["1001",
# "0100"] then your program should return the string "1101"

def bitwise(arr)
  result = ''
  arr.first.each_char.with_index do |char, idx|
    result += (char == '0' && arr.last[idx] == '0') ? '0' : '1'
  end
  result
end

p bitwise(["1001", "0100"]) #1101
p bitwise(["100", "000"]) # 100
p bitwise(["00011", "01010"]) # 01011"
puts


# Alternate solution:
def bitwise(arr)
  arr.first.each_char.with_index.with_object('') do |(char, idx), obj|
    (char == '0' && arr.last[idx] == '0') ? obj << '0' : obj << '1'
  end
end

p bitwise(["1001", "0100"]) #1101
p bitwise(["100", "000"]) # 100
p bitwise(["00011", "01010"]) # 01011"
