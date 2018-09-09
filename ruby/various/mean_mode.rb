# mean_mode.rb

# Using the Ruby language, have the function MeanMode(arr) take the array of
# numbers stored in arr and return 1 if the mode equals the mean, 0 if they
# don't equal each other (ie. [5, 3, 3, 3, 1] should return 1 because the mode
# (3) equals the mean (3)). The array will not be empty, will only contain
# positive integers, and will not contain more than one mode.


def mean_mode(arr)
  mean = arr.reduce(:+) / arr.size
  arr_counts = Hash.new(0)
  arr.each { |num| arr_counts[num] += 1 }
  mode = arr_counts.sort_by { |k, v| v }.last.first
  mean == mode ? 1 : 0
end

p mean_mode([5, 3, 3, 3, 1]) # 1
p mean_mode([1, 2, 3]) # 0
p mean_mode([4, 4, 4, 6, 2]) # 1
p mean_mode([1,1,2,4]) # 0
