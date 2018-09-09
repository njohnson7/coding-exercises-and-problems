# array_min_jumps.rb

# Using the Ruby language, have the function ArrayMinJumps(arr) take the array
# of integers stored in arr, where each integer represents the maximum number of
# steps that can be made from that position, and determine the least amount of
# jumps that can be made to reach the end of the array. For example: if arr is
# [1, 5, 4, 6, 9, 3, 0, 0, 1, 3] then your program should output the number 3
# because you can reach the end of the array from the beginning via the
# following steps:  1 -> 5 -> 9 -> END or 1 -> 5 -> 6 -> END. Both of these
# combinations produce a series of 3 steps. And as you can see, you don't always
# have to take the maximum number of jumps at a specific position, you can take
# less jumps even though the number is higher.

# If it is not possible to reach the end of the array, return -1.

def array_min_jumps(arr)
  moves = Hash.new([])
  move_num = 0
  until arr.empty?
    current_move = arr.shift
    current_move.times do |idx|
      moves[move_num] += [arr[idx]]
    end
    move_num += 1
  end
  moves
end

p array_min_jumps([1, 5, 4, 6, 9, 3, 0, 0, 1, 3]) # 3
p array_min_jumps([3, 4, 2, 1, 1, 100]) # 2
p array_min_jumps([1, 3, 6, 8, 2, 7, 1, 2, 1, 2, 6, 1, 2, 1, 2]) # 4
p array_min_jumps([2, 2, 0, 0, 1, 2]) # -1
