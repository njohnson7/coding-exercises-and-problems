# arith_geo_ii.rb

# Using the Ruby language, have the function ArithGeoII(arr) take the array of
# numbers stored in arr and return the string "Arithmetic" if the sequence
# follows an arithmetic pattern or return "Geometric" if it follows a geometric
# pattern. If the sequence doesn't follow either pattern return -1. An
# arithmetic sequence is one where the difference between each of the numbers is
# consistent, where as in a geometric sequence, each term after the first is
# multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8]
# and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as
# parameters, 0 will not be entered, and no array will contain all the same
# elements.

def arith_geo_ii(arr)
  differences = []
  ratios = []
  arr.each_with_index do |num, idx|
    next if idx == arr.size - 1
    differences << arr[idx + 1] - num
    ratios << arr[idx + 1] / num
  end
  if differences.uniq.size == 1 then 'Arithmetic'
  elsif ratios.uniq.size == 1 then 'Geometric'
  else -1
  end
end

p arith_geo_ii([2, 4, 6, 8]) # a
p arith_geo_ii([2, 6, 18, 54]) # g
p arith_geo_ii([5,10,15]) # a
p arith_geo_ii([2,4,16,24]) # -1
