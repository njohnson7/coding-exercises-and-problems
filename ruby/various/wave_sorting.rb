# wave_sorting.rb

# Using the Ruby language, have the function WaveSorting(arr) take the array of
# positive integers stored in arr and return the string true if the numbers can
# be arranged in a wave pattern: a1 > a2 < a3 > a4 < a5 > ..., otherwise return
# the string false. For example, if arr is: [0, 1, 2, 4, 1, 4], then a possible
# wave ordering of the numbers is: [2, 0, 4, 1, 4, 1]. So for this input your
# program should return the string true. The input array will always contain at
# least 2 elements. More examples are given below as sample test cases.

def wave_sorting(arr)
  arr.sort!
  split_at = arr.size / 2
  small, large = arr[0...split_at], arr[split_at..-1]
  result = []
  until small.empty? && large.empty?
    result << large.shift << small.shift
  end
  result.compact!
  1.upto(result.size - 2) do |idx|
    if result[idx - 1] > result[idx]
      return false unless result[idx] < result[idx + 1]
    elsif result[idx - 1] < result[idx]
      return false unless result[idx] > result[idx + 1]
    else
      return false
    end
  end
  true
end

p wave_sorting([0, 1, 2, 4, 1, 4]) # t [2, 0, 4, 1, 4, 1].
p wave_sorting([0, 1, 2, 4, 1, 1, 1]) # f
p wave_sorting([0, 4, 22, 4, 14, 4, 2]) # t
p wave_sorting([0, 4]) # t
p wave_sorting([0, 2, 7]) # t
p wave_sorting([0, 2, 7, 20, 1, 1, 3]) # t
p wave_sorting([0, 2, 7, 12]) # t
p wave_sorting([0, 2, 7, 3, 1, 3, 8]) # t
p wave_sorting([0, 2, 7, 4]) # t
p wave_sorting([0, 2, 7, 4, 5]) # t
p wave_sorting([0, 2, 7, 4, 5, 2, 2, 2, 2]) # f
p wave_sorting([0, 2, 7, 4, 5, 2, 2, 2, 2, 6]) # t
p wave_sorting([0, 2, 7, 4, 5, 2, 2, 2, 2, 2]) # f
p wave_sorting([0, 2, 7, 4, 5, 7, 7, 7, 7]) # t
p wave_sorting([0, 2, 7, 4, 5, 7, 7, 7, 7, 7]) # f
p wave_sorting([0, 2, 7, 4, 5, 7, 7, 7, 7, 6]) # t
