# matrix_spiral.rb

# Using the Ruby language, have the function MatrixSpiral(strArr) read the array
# of strings stored in strArr which will represent a 2D N matrix, and your
# program should return the elements after printing them in a clockwise, spiral
# order. You should return the newly formed list of elements as a string with
# the numbers separated by commas. For example: if strArr is "[1, 2, 3]", "[4,
# 5, 6]", "[7, 8, 9]" then this looks like the following 2D matrix:

# 1 2 3    0, 1, 2, 5, 8, 7, 6, 4, 5
# 4 5 6
# 7 8 9

# 1  2     1  2  14 10
# 10 14    0, 1, 3, 2

# [4, 5, 6, 5]
# [1, 1, 2, 2]
# [5, 4, 2, 9]
#       "4  5  6  5  2  9  2  4  5  1  1  2"
#        0  1  2  3  7  11 10 9  8  4  5  6


# So your program should return the elements of this matrix in a clockwise,
# spiral order which is: 1,2,3,6,9,8,7,4,5

def matrix_spiral(arr)
  result = []
  p rows = arr.map { |row| row.scan(/\d+/).map(&:to_i) }
  matrix = rows.flatten

end

p matrix_spiral(["[1, 2, 3]", "[4, 5, 6]", "[7, 8, 9]"]) # '1,2,3,6,9,8,7,4,5'
p matrix_spiral(["[1, 2]", "[10, 14]"]) # "1,2,14,10"
p matrix_spiral(["[4, 5, 6, 5]", "[1, 1, 2, 2]", "[5, 4, 2, 9]"])
# "4,5,6,5,2,9,2,4,5,1,1,2"
