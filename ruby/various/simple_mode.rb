# simple_mode.rb

# Using the Ruby language, have the function SimpleMode(arr) take the array of
# numbers stored in arr and return the number that appears most frequently (the
# mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4.
# If there is more than one mode return the one that appeared in the array first
# (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is
# no mode return -1. The array will not be empty.


def simple_mode(arr)
  mode = nil
  count = 1
  arr.each do |num|
    if arr.count(num) > count
      mode = num
      count = arr.count(num)
    end
  end
  mode || -1
end

p simple_mode([10, 4, 5, 2, 4]) # 4
p simple_mode([5, 10, 10, 6, 5]) # 5
p simple_mode([5,5,2,2,1]) # 5
p simple_mode([3,4,1,6,10]) # -1
