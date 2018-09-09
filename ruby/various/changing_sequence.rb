# changing_sequence.rb

# Using the Ruby language, have the function ChangingSequence(arr) take the
# array of numbers stored in arr and return the index at which the numbers stop
# increasing and begin decreasing or stop decreasing and begin increasing. For
# example: if arr is [1, 2, 4, 6, 4, 3, 1] then your program should return 3
# because 6 is the last point in the array where the numbers were increasing and
# the next number begins a decreasing sequence. The array will contain at least
# 3 numbers and it may contains only a single sequence, increasing or
# decreasing. If there is only a single sequence in the array, then your program
# should return -1. Indexing should begin with 0.

def changing_sequence(arr)
  if arr.first < arr[1]
    arr.each_with_index do |num, idx|
      break if idx >= arr.size - 1
      return idx if num > arr[idx + 1]
    end
  end
    if arr.first > arr[1]
    arr.each_with_index do |num, idx|
      break if idx >= arr.size - 1
      return idx if num < arr[idx + 1]
    end
  end
  -1
end

p changing_sequence([1, 2, 4, 6, 4, 3, 1]) # 3
p changing_sequence([-4, -2, 9, 10]) # -1
p changing_sequence([5, 4, 3, 2, 10, 11]) # 3
puts


# Alternate solution:
def changing_sequence(arr)
  1.upto(arr.size - 2) do |idx|
    if arr[idx - 1] > arr[idx]
      return idx if arr[idx] < arr[idx + 1]
    elsif arr[idx - 1] < arr[idx]
      return idx if arr[idx] > arr[idx + 1]
    end
  end
  -1
end

p changing_sequence([1, 2, 4, 6, 4, 3, 1]) # 3
p changing_sequence([-4, -2, 9, 10]) # -1
p changing_sequence([5, 4, 3, 2, 10, 11]) # 3
puts


# Alternate solution 2:
def changing_sequence(arr)
  increasing = arr.first < arr[1]
  arr.each_with_index do |num, idx|
    break if idx == arr.size - 1
    return idx if (num < arr[idx + 1]) != increasing
  end
  -1
end

p changing_sequence([1, 2, 4, 6, 4, 3, 1]) # 3
p changing_sequence([-4, -2, 9, 10]) # -1
p changing_sequence([5, 4, 3, 2, 10, 11]) # 3
