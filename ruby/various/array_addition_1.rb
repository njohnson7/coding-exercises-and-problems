# array_addition_1.rb

# Using the Ruby language, have the function ArrayAdditionI(arr) take the array
# of numbers stored in arr and return the string true if any combination of
# numbers in the array can be added up to equal the largest number in the array,
# otherwise return the string false. For example: if arr contains [4, 6, 23, 10,
# 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array
# will not be empty, will not contain all the same elements, and may contain
# negative numbers.

def array_addition(arr)
  largest = arr.sort!.pop
  sums = []
  1.upto(arr.size) do |idx|
    sums << arr.combination(idx).to_a.map { |c| c.reduce(:+) }
  end
  sums.flatten.uniq.include?(largest)
end

puts array_addition([4, 6, 23, 10, 1, 3]) # t
puts array_addition([5,7,16,1,2]) # f
puts array_addition([3,5,-1,8,12]) # t
