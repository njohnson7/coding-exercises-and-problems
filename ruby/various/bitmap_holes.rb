# bitmap_holes.rb

# Using the Ruby language, have the function BitmapHoles(strArr) take the array
# of strings stored in strArr, which will be a 2D matrix of 0 and 1's, and
# determine how many holes, or contiguous regions of 0's, exist in the matrix. A
# contiguous region is one where there is a connected group of 0's going in one
# or more of four directions: up, down, left, or right. For example: if strArr
# is ["10111", "10101", "11101", "11111"], then this looks like the following
# matrix:

# 1 0 1 1 1    0  1  2  3  4
# 1 0 1 0 1    5  6  7  8  9
# 1 1 1 0 1    10 11 12 13 14
# 1 1 1 1 1    15 16 17 18 19

# 1 0 1 1      0 1 2 3
# 0 0 1 0      4 5 6 7

# For the input above, your program should return 2 because there are two
# separate contiguous regions of 0's, which create "holes" in the matrix. You
# can assume the input will not be empty.

def bitmap_holes(arr)
  rows = arr.map { |row| row.chars.map(&:to_i) }
  matrix = rows.flatten
  # rows.first.zip(rows[1..-1])
  count = 0
  connected = false
  while rows.flatten.include?(0)
    rows.each_with_index do |row, row_idx|
      column_idx = 0
      while column_idx < row.size
        if row[column_idx] == 0
          count += 1
          row[column_idx] = 1
          if row[column_idx + 1] == 0
            connected = true
            row[column_idx + 1] = 1
            while connected
              if row[column_idx + 2] == 0
                row[column_idx + 2] = 1
              elsif rows[row_idx + 1]
              else
                connected = false
              end
            end
          end
        end
        column_idx += 1
      end
    end
  end
end

p bitmap_holes(["10111", "10101", "11101", "11111"]) # 2
p bitmap_holes(["01111", "01101", "00011", "11110"]) # 3
p bitmap_holes(["1011", "0010"]) # 2
