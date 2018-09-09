# triangle_row.rb

# Using the Ruby language, have the function TriangleRow(num) take num which
# will be a positive integer representing some row from Pascal's triangle.
# Pascal's triangle starts with a [1] at the 0th row of the triangle. Then the
# first row is [1, 1] and the second row is [1, 2, 1]. The next row begins with
# 1 and ends with 1, and the inside of the row is determined by adding the k-1
# and kth elements from the previous row. The next row in the triangle would
# then be [1, 3, 3, 1], and so on. The input will be some positive integer and
# your goal is to return the sum of that row. For example: if num is 4 then your
# program should return the sum of 1 + 4 + 6 + 4 + 1 which is 16.

def triangle_row(num)
  2**num
end

p triangle_row(4) # 16
p triangle_row(1) # 2
p triangle_row(2) # 4
p triangle_row(6)
puts


def triangle_row(num)
  return 1 if num == 0
  row = [1, 1]
  2.upto(num) do |idx|
    row = new_row(row)
  end
  row.reduce(:+)
end

def new_row(row)
  next_row = [1]
  (row.size - 1).times do |idx|
    next_row << row[idx] + row[idx + 1]
  end
  next_row << 1
end

# p new_row([1,4,6,4,1])
p triangle_row(4) # 16
p triangle_row(1) # 2
p triangle_row(2) # 4
p triangle_row(6)
