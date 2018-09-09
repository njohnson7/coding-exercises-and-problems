# nearest_small_values.rb

# Using the Ruby language, have the function NearestSmallValues(arr) take the
# array of integers stored in arr, and for each element in the list, search all
# the previous values for the nearest element that is smaller than the current
# element and create a new list from these numbers. If there is no element
# before a certain position that is smaller, input a -1. For example: if arr is
# [5, 2, 8, 3, 9, 12] then the nearest smaller values list is [-1, -1, 2, 2, 3,
# 9]. The logic is as follows:

# For 5, there is no smaller previous value so the list so far is [-1]. For 2,
# there is also no smaller previous value, so the list is now [-1, -1]. For 8,
# the nearest smaller value is 2 so the list is now [-1, -1, 2]. For 3, the
# nearest smaller value is also 2, so the list is now [-1, -1, 2, 2]. This goes
# on to produce the answer above. Your program should take this final list and
# return the elements as a string separated by a space: -1 -1 2 2 3 9

def nearest_small_values(arr)
  result = []
  arr.each_with_index do |num, idx|
    if idx == 0
      result << -1
      next
    end
    idx2 = idx - 1
    while idx2 >= 0
      if arr[idx2] <= arr[idx]
        result << arr[idx2]
        break
      end
      idx2 -= 1
      result << -1 if idx2 < 0
    end
  end
  result.join(' ')
end

p nearest_small_values([5, 2, 8, 3, 9, 12]) # '-1, -1, 2, 2, 3, 9'
p nearest_small_values([5, 3, 1, 9, 7, 3, 4, 1]) # "-1 -1 -1 1 1 1 3 1" # WRONG?
p nearest_small_values([2, 4, 5, 1, 7]) # "-1 2 4 -1 1"
