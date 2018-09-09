# three_sum.rb

# Using the Ruby language, have the function ThreeSum(arr) take the array of
# integers stored in arr, and determine if any three distinct numbers (excluding
# the first element) in the array can sum up to the first element in the array.
# For example: if arr is [8, 2, 1, 4, 10, 5, -1, -1] then there are actually
# three sets of triplets that sum to the number 8: [2, 1, 5], [4, 5, -1] and
# [10, -1, -1]. Your program should return the string true if 3 distinct
# elements sum to the first element, otherwise your program should return the
# string false. The input array will always contain at least 4 elements.

def three_sum(arr)
  num = arr.shift
  arr.combination(3).to_a.each { |set| return 'true' if set.reduce(:+) == num }
  'false'
end

p three_sum([8, 2, 1, 4, 10, 5, -1, -1]) # 'true'
p three_sum([10, 2, 3, 1, 5, 3, 1, 4, -4, -3, -2]) # t
p three_sum([12, 3, 1, -5, -4, 7]) # f
p three_sum([64, 3, 50, 45, 32, 14, 50, 45, 31, 66, 22, 15, 16, 20])
p three_sum([10, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 5, 5, 5, 5, 5, 5, 8, -2, -2, -2,
             -2, -1, 7])
p three_sum([5, -6, 4, -5, -3, -2, 7, 1, 2, 12, 8, 14])
