# super_increasing.rb

# Using the Ruby language, have the function Superincreasing(arr) take the array
# of numbers stored in arr and determine if the array forms a superincreasing
# sequence where each element in the array is greater than the sum of all
# previous elements. The array will only consist of positive integers. For
# example: if arr is [1, 3, 6, 13, 54] then your program should return the
# string "true" because it forms a superincreasing sequence. If a
# superincreasing sequence isn't formed, then your program should return the
# string "false"

def super_increasing(arr)
  arr.each_with_index do |num, idx|
    next if idx == 0
    return false unless num > arr[0..idx - 1].reduce(:+)
  end
  true
end

p super_increasing([1, 3, 6, 13, 54]) # t
p super_increasing([1, 2, 3, 4]) # f
p super_increasing([1,2,5,10]) # t
