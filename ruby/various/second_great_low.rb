# second_great_low.rb

# Using the Ruby language, have the function SecondGreatLow(arr) take the array
# of numbers stored in arr and return the second lowest and second greatest
# numbers, respectively, separated by a space. For example: if arr contains [7,
# 7, 12, 98, 106] the output should be 12 98. The array will not be empty and
# will contain at least 2 numbers. It can get tricky if there's just two
# numbers!

def second_great_low(arr)
  "#{arr.uniq.min(2).last} #{arr.uniq.max(2).last}"
end

puts second_great_low([7, 7, 12, 98, 106]) #12 98
puts second_great_low([1, 42, 42, 180]) # 42 42
puts second_great_low([4, 90]) # 90 4
puts second_great_low([1,2,2,3]) # 2 2
puts second_great_low([-4, -5, 10, 2]) # -4 2
puts second_great_low([100, 200, 3, 400, 5, 1]) # 3 200
puts second_great_low([2,2,2,5,5,5,6]) # 5 5
