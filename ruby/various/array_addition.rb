# array_addition.rb

# Using the Ruby language, have the function ArrayAddition(arr) take the array
# of numbers stored in arr and return the string true if any combination of
# numbers in the array can be added up to equal the largest number in the array,
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10,
# 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array
# will not be empty, will not contain all the same elements, and may contain
# negative numbers.

def array_addition(arr)
  arr = arr.sort
  largest = arr.pop
  sums = []
  1.upto(arr.size) do |amount|
    sums << arr.combination(amount).to_a.map { |nums| nums.reduce(:+) }
  end
  return true if sums.flatten.include?(largest)
  false
end

p array_addition([4, 6, 23, 10, 1, 3]) # t
p array_addition([5,7,16,1,2]) # f
p array_addition([3,5,-1,8,12]) # t
