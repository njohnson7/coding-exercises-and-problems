# off_line_minimum.rb

# Using the Ruby language, have the function OffLineMinimum(strArr) take the
# strArr parameter being passed which will be an array of integers ranging from
# 1...n and the letter "E" and return the correct subset based on the following
# rules. The input will be in the following format:
# ["I","I","E","I",...,"E",...,"I"] where the I's stand for integers and the E
# means take out the smallest integer currently in the whole set. When finished,
# your program should return that new set with integers separated by commas. For
# example: if strArr is ["5","4","6","E","1","7","E","E","3","2"] then your
# program should return 4,1,5.

def off_line_minimum(arr)
  current_set = []
  lowest_nums = []
  arr.each_with_index do |char, idx|
    if char == 'E'
      current_set << arr[0..(idx - 1)]
      current_set.each do |set|
        lowest_nums.each do |num|
          set.delete(num)
        end
      end
      lowest_nums << current_set.last.min
    end
  end
  lowest_nums.join(',')
end

p off_line_minimum(["5","4","6","E","1","7","E","E","3","2"]) # 4 1 5
p off_line_minimum(["1","2","E","E","3"]) # 1 2
p off_line_minimum(["4","E","1","E","2","E","3","E"]) # 4 1 2 3
puts


# Alternate solution:
def off_line_minimum(arr)
  nums, result = [], []
  arr.each do |char|
    if char == 'E'
      result << nums.sort!.shift
    else
      nums << char
    end
  end
  result.join(',')
end

p off_line_minimum(["5","4","6","E","1","7","E","E","3","2"]) # 4 1 5
p off_line_minimum(["1","2","E","E","3"]) # 1 2
p off_line_minimum(["4","E","1","E","2","E","3","E"]) # 4 1 2 3
