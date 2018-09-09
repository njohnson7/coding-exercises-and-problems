# array_matching.rb

# Have the function ArrayMatching(strArr) read the array of strings stored in
# strArr which will contain only two elements, both of which will represent an
# array of positive integers. For example: if strArr is ["[1, 2, 5, 6]", "[5, 2,
# 8, 11]"], then both elements in the input represent two integer arrays, and
# your goal for this challenge is to add the elements in corresponding locations
# from both arrays. For the example input, your program should do the following
# additions: [(1 + 5), (2 + 2), (5 + 8), (6 + 11)] which then equals [6, 4, 13,
# 17]. Your program should finally return this resulting array in a string
# format with each element separated by a hyphen: 6-4-13-17.

# If the two arrays do not have the same amount of elements, then simply append
# the remaining elements onto the new array (example shown below). Both arrays
# will be in the format: [e1, e2, e3, ...] where at least one element will exist
# in each array.

def array_matching(arr)
  arr = arr.sort_by(&:size)
  arr1 = arr.first.scan(/\d+/).map(&:to_i)
  arr2 = arr.last.scan(/\d+/).map(&:to_i)
  if arr1.size < arr2.size
    arr1 << 0 until arr1.size >= arr2.size
  end
  arr1.zip(arr2).map { |set| set.reduce(:+) }.join('-')
end

p array_matching(["[1, 2, 5, 6]", "[5, 2, 8, 11]"]) # "6-4-13-17"
p array_matching(["[5, 2, 3]", "[2, 2, 3, 10, 6]"]) # "7-4-6-10-6"
p array_matching(["[1, 2, 1]", "[2, 1, 5, 2]"]) # "3-3-6-2"
p array_matching(["[1, 2, 1, 4]", "[2, 1, 5]"])
