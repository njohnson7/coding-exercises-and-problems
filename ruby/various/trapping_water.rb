# trapping_water.rb

# Using the Ruby language, have the function TrappingWater(arr) take the array
# of non-negative integers stored in arr, and determine the largest amount of
# water that can be trapped. The numbers in the array represent the height of a
# building (where the width of each building is 1) and if you imagine it
# raining, water will be trapped between the two tallest buildings. For example:
# if arr is [3, 0, 0, 2, 0, 4] then this array of building heights looks like
# the following picture if we draw it out:

# Now if you imagine it rains and water gets trapped in this picture, then it'll
# look like the following (the x's represent water):

# This is the most water that can be trapped in this picture, and if you
# calculate the area you get 10, so your program should return 10.

def trapping_water(arr)
  tallest2, tallest1 = arr.max(2).sort
  idx1, idx2 = nil, nil
  arr.each_with_index do |building, idx|
    if [tallest2, tallest1].include?(building)
      if idx1.nil?
        idx1 = idx
      elsif idx2.nil?
        idx2 = idx
      end
    end
  end
  between = arr[idx1 + 1...idx2]
  between.map { |building| tallest2 - building }.reduce(:+) || 0
end

p trapping_water([3, 0, 0, 2, 0, 4]) # 10
p trapping_water([1, 2, 1, 2]) # 1
p trapping_water([0, 2, 4, 0, 2, 1, 2, 6]) # 11
p trapping_water([1, 2, 3, 4]) # 0
p trapping_water([1, 1, 1, 1]) # 0
p trapping_water([5, 4, 3, 2, 1, 10, 20]) # 10
