# overlapping_rectangles.rb

# Using the Ruby language, have the function OverlappingRectangles(strArr) read
# the strArr parameter being passed which will represent two rectangles on a
# Cartesian coordinate plane and will contain 8 coordinates with the first 4
# making up rectangle 1 and the last 4 making up rectange 2. It will be in the
# following format: ["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"] Your
# program should determine the area of the space where the two rectangles
# overlap, and then output the number of times this overlapping region can fit
# into the first rectangle. For the above example, the overlapping region makes
# up a rectangle of area 2, and the first rectangle (the first 4 coordinates)
# makes up a rectangle of area 4, so your program should output 2. The
# coordinates will all be integers. If there's no overlap between the two
# rectangles return 0.

def overlapping_rectangles(arr)
  coords = arr.to_s.scan(/\d\,\-?\d/).map { |set| set.split(',').map(&:to_i) }
  rect1, rect2 = coords[0..3].sort, coords[4..-1].sort
  len1 = (rect1[2].first - rect1[0].first).abs
  width1 = (rect1[1].last - rect1[0].last).abs
  area1 = len1 * width1
  len2 = (rect2[2].first - rect2[0].first).abs
  width2 = (rect2[1].last - rect2[0].last).abs
  area2 = len2 * width2
  [area1, area2]
end

p overlapping_rectangles(["(0,0),(2,2),(2,0),(0,2),(1,0),(1,2),(6,0),(6,2)"] )
# 2
p overlapping_rectangles(["(0,0),(0,-2),(3,0),(3,-2),(2,-1),(3,-1),(2,3),(3,3)"])
# 6
p overlapping_rectangles(["(0,0),(5,0),(0,2),(5,2),(2,1),(5,1),(2,-1),(5,-1)"])
# 3