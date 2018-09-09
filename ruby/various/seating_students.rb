# seating_students.rb

# Using the Ruby language, have the function SeatingStudents(arr) read the array
# of integers stored in arr which will be in the following format:  [K, r1, r2,
# r3, ...] where K represents the number of desks in a classroom, and the rest
# of the integers in the array will be in sorted order and will represent the
# desks that are already occupied. All of the desks will be arranged in 2
# columns, where desk #1 is at the top left, desk #2 is at the top right, desk
# #3 is below #1, desk #4 is below #2, etc. Your program should return the
# number of ways 2 students can be seated next to each other. This means 1
# student is on the left and 1 student on the right, or 1 student is directly
# above or below the other student.

# For example: if arr is [12, 2, 6, 7, 11] then this classrooms looks like the
# following picture:

# Based on above arrangement of occupied desks, there are a total of 6 ways to
# seat 2 new students next to each other. The combinations are: [1, 3], [3, 4],
# [3, 5], [8, 10], [9, 10], [10, 12]. So for this input your program should
# return 6. K will range from 2 to 24 and will always be an even number. After
# K, the number of occupied desks in the array can range from 0 to K.

def seating_students(arr)
  num_desks = arr.first
  full_desks = arr[1..-1]
  desks = (1..num_desks).to_a
  adjacent = []
  desks.each do |desk|
    if desk.odd?
      adjacent << [desk, desk + 1] << [desk, desk + 2]
    else
      adjacent << [desk, desk + 2]
    end
  end
  adjacent.delete_if do |desk1, desk2|
    full_desks.include?(desk1) || full_desks.include?(desk2) || desk2 > num_desks
  end
  adjacent.size
end

p seating_students([12, 2, 6, 7, 11]) # 6
p seating_students([6, 4]) # 4
p seating_students([8, 1, 8]) # 6
