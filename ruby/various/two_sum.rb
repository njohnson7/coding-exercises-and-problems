# two_sum.rb

# Using the Ruby language, have the function TwoSum(arr) take the array of
# integers stored in arr, and determine if any two numbers (excluding the first
# element) in the array can sum up to the first element in the array. For
# example: if arr is [7, 3, 5, 2, -4, 8, 11], then there are actually two pairs
# that sum to the number 7: [5, 2] and [-4, 11]. Your program should return all
# pairs, with the numbers separated by a comma, in the order the first number
# appears in the array. Pairs should be separated by a space. So for the example
# above, your program would return: 5,2 -4,11

# If there are no two numbers that sum to the first element in the array, return
# -1

def two_sum(arr)
  sum = arr.shift
  combos = []
  arr.combination(2).to_a.each do |set|
    combos << set if set.reduce(:+) == sum
  end
  combos.map! { |combo| combo.join(',') }
  combos.empty? ? '-1' : combos.join(' ')
end

p two_sum([7, 3, 5, 2, -4, 8, 11]) # 5,2 -4,11
p two_sum([17, 4, 5, 6, 10, 11, 4, -3, -5, 3, 15, 2, 7]) # 6,11 10,7 15,2
p two_sum([7, 6, 4, 1, 7, -2, 3, 12]) # 6,1 4,3
p two_sum([7, 6, 4, 5]) # -1
