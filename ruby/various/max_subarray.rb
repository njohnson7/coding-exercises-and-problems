# max_subarray.rb

# Using the Ruby language, have the function MaxSubarray(arr) take the array of
# numbers stored in arr and determine the largest sum that can be formed by any
# contiguous subarray in the array. For example, if arr is [-2, 5, -1, 7, -3]
# then your program should return 11 because the sum is formed by the subarray
# [5, -1, 7]. Adding any element before or after this subarray would make the
# sum smaller.

def max_subarray(arr)
  sub_arrays = []
  arr.each_with_index do |num, idx|
    idx2 = idx
    while idx2 < arr.size
      sub_arrays << arr[idx..idx2]
      idx2 += 1
    end
  end
  sub_arrays.map { |nums| nums.reduce(:+) }.max
end

p max_subarray([-2, 5, -1, 7, -3]) # 11
p max_subarray([1, -2, 0, 3]) # 3
p max_subarray([3, -1, -1, 4, 3, -1]) # 8
