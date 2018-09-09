# largest_pair.rb

# Using the Ruby language, have the function LargestPair(num) take the num
# parameter being passed and determine the largest double digit number within
# the whole number. For example: if num is 4759472 then your program should
# return 94 because that is the largest double digit number. The input will
# always contain at least two positive digits.

def largest_pair(num)
  num_str = num.to_s
  nums = []
  num_str.each_char.with_index do |digit, idx|
    break if idx == num_str.size - 1
    nums << (digit + num_str[idx + 1]).to_i
  end
  nums.max
end

p largest_pair(4759472) # 94
p largest_pair(453857) # 85
p largest_pair(363223311) # 63
puts


# Alternate solution:
def largest_pair(num)
  num = num.to_s
  greatest = 0
  0.upto(num.size - 2) do |idx|
    current = num[idx, 2].to_i
    greatest = current if current > greatest
  end
  greatest
end

p largest_pair(4759472) # 94
p largest_pair(453857) # 85
p largest_pair(363223311) # 63
