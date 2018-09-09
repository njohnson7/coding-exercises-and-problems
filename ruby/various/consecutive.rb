# consecutive.rb

# Using the Ruby language, have the function Consecutive(arr) take the array of
# integers stored in arr and return the minimum number of integers needed to
# make the contents of arr consecutive from the lowest number to the highest
# number. For example: If arr contains [4, 8, 6] then the output should be 2
# because two numbers need to be added to the array (5 and 7) to make it a
# consecutive array of numbers from 4 to 8. Negative numbers may be entered as
# parameters and no array will have less than 2 elements.

def consecutive(arr)
  arr = arr.sort
  result = []
  count = 0
  arr.each_with_index do |num, idx|
    result << num
    next if idx == arr.size - 1
    until result.last + 1 == arr[idx + 1]
      result << result.last + 1
      count += 1
    end
  end
  count
end

p consecutive([4, 8, 6]) # 2
p consecutive([5,10,15]) # 8
p consecutive([-2,10,4]) # 10
