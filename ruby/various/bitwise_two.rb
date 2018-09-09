# bitwise_two.rb

# Using the Ruby language, have the function BitwiseTwo(strArr) take the array
# of strings stored in strArr, which will only contain two strings of equal
# length that represent binary numbers, and return a final binary string that
# performed the bitwise AND operation on both strings. A bitwise AND operation
# places a 1 in the new string where there is a 1 in both locations in the
# binary strings, otherwise it places a 0 in that spot. For example: if strArr
# is ["10111", "01101"] then your program should return the string "00101"

def bitwise_two(arr)
  num1, num2 = arr.first, arr.last
  result = ''
  num1.each_char.with_index do |digit, idx|
    if digit == '1' && num2[idx] == '1'
      result << '1'
    else
      result << '0'
    end
  end
  result
end

p bitwise_two(["10111", "01101"]) # "00101"
p bitwise_two(["100", "000"]) # '000'
p bitwise_two(["10100", "11100"]) # '10100'
puts


# Alternate solution:
def bitwise_two(arr)
  arr.first.each_char.with_index.with_object('') do |(digit, idx), result|
    (digit == '1' && arr.last[idx] == '1') ? result << '1' : result << '0'
  end
end

p bitwise_two(["10111", "01101"]) # "00101"
p bitwise_two(["100", "000"]) # '000'
p bitwise_two(["10100", "11100"]) # '10100'
