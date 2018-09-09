# rectangle_area.rb

# Using the Ruby language, have the function RectangleArea(strArr) take the
# array of strings stored in strArr, which will only contain 4 elements and be
# in the form (x y) where x and y are both integers, and return the area of the
# rectangle formed by the 4 points on a Cartesian grid. The 4 elements will be
# in arbitrary order. For example: if strArr is ["(0 0)", "(3 0)", "(0 2)", "(3
# 2)"] then your program should return 6 because the width of the rectangle is 3
# and the height is 2 and the area of a rectangle is equal to the width *
# height.

def rectangle_area(arr)
  points = arr.map { |point| (point.match(/(-?\d+) (-?\d+)/)[1, 2]).map(&:to_i) }.sort
  # AKA: points = arr.map{ |point| point.scan(/-?\d+/).map(&:to_i) }.sort
  length = points[1].last - points.first.last
  width = points.last.first - points[1].first
  length * width
end

p rectangle_area(["(0 0)", "(3 0)", "(0 2)", "(3 2)"]) # 6
p rectangle_area(["(1 1)","(1 3)","(3 1)","(3 3)"]) # 4
p rectangle_area(["(0 0)","(1 0)","(1 1)","(0 1)"]) # 1
p rectangle_area(["(-1 -1)","(0 0)","(-1 0)","(0 -1)"])
p rectangle_area(["(-2 -2)","(0 0)","(-2 0)","(0 -2)"])
p rectangle_area(["(-3 0)","(3 0)","(-3 2)","(3 2)"])
p rectangle_area(["(-3 1)","(-3 -1)","(3 1)","(3 -1)"])
