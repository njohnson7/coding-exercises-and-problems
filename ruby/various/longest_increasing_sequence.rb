# longest_increasing_sequence.rb

# Using the Ruby language, have the function LongestIncreasingSequence(arr) take
# the array of positive integers stored in arr and return the length of the
# longest increasing subsequence (LIS). A LIS is a subset of the original list
# where the numbers are in sorted order, from lowest to highest, and are in
# increasing order. The sequence does not need to be contiguous or unique, and
# there can be several different subsequences. For example: if arr is [4, 3, 5,
# 1, 6] then a possible LIS  is [3, 5, 6], and another is [1, 6]. For this
# input, your program should return 3 because that is the length of the longest
# increasing subsequence.

# Doesn't work with 4th and 5th examples
def longest_increasing_sequence(arr)
  sequences = []
  arr.each_with_index do |num, idx|
    sequence = [num]
    idx2 = idx + 1
    while idx2 <= arr.size - 1
      sequence << arr[idx2] if arr[idx2] > sequence.last
      idx2 += 1
    end
    sequences << sequence
  end
  sequences.max_by(&:size).size
end

p longest_increasing_sequence([4, 3, 5, 1, 6]) # 3
p longest_increasing_sequence([9, 9, 4, 2]) # 1
p longest_increasing_sequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90]) # 7
p longest_increasing_sequence([10, 12, 4, 6, 100, 2, 56, 34, 79])
p longest_increasing_sequence([10, 12, 4, 6, 100, 2, 56, 34, 79, 45, 33, 12, 45,
                               67, 89])
p longest_increasing_sequence([15, 27, 14, 38, 26, 55, 46, 65, 85])
puts


# Alternate solution that works with all examples:
def longest_increasing_sequence(arr)
  sequences = []
  1.upto(arr.size) do |times|
    sequences << arr.combination(times).to_a
  end
  sequences.flatten!(1)
  increasing_sequences = []
  sequences.each do |sequence|
    increasing = true
    sequence.each_with_index do |num, idx|
      break if idx == sequence.size - 1
      increasing = false unless sequence[idx + 1] > num
    end
    increasing_sequences << sequence if increasing
  end
  increasing_sequences.max_by(&:size).size
end

p longest_increasing_sequence([4, 3, 5, 1, 6]) # 3
p longest_increasing_sequence([9, 9, 4, 2]) # 1
p longest_increasing_sequence([10, 22, 9, 33, 21, 50, 41, 60, 22, 68, 90]) # 7
p longest_increasing_sequence([10, 12, 4, 6, 100, 2, 56, 34, 79])
p longest_increasing_sequence([10, 12, 4, 6, 100, 2, 56, 34, 79, 45, 33, 12, 45,
                               67, 89])
p longest_increasing_sequence([15, 27, 14, 38, 26, 55, 46, 65, 85])
