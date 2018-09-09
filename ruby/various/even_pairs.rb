# even_pairs.rb

# Using the Ruby language, have the function EvenPairs(str) take the str
# parameter being passed and determine if a pair of adjacent even numbers exists
# anywhere in the string. If a pair exists, return the string true, otherwise
# return false. For example: if str is "f178svg3k19k46" then there are two even
# numbers at the end of the string, "46" so your program should return the
# string true. Another example: if str is "7r5gg812" then the pair is "812" (8
# and 12) so your program should return the string true.

def even_pairs(str)
  nums = str.scan(/\d+/).select { |num| num.size > 1 }
  nums.each_with_index do |num, idx|
    if num.size == 2
      return 'true' if num[0].to_i.even? && num[1].to_i.even?
    else
      num.each_char.with_index do |digit, idx|
        next if idx >= num.size - 1
        length = 1
        while length < num.size
          if num[idx, length].to_i.even?
            length2 = 1
            while length2 <= num.size - length
              return 'true' if num[idx + length, length2].to_i.even?
              length2 += 1
            end
          end
          length += 1
        end
      end
    end
  end
  'false'
end

p even_pairs("f178svg3k19k46") # t
p even_pairs("7r5gg812") # t
p even_pairs("3gy41d216") # t
p even_pairs("f09r27i8e67") # f
p even_pairs("f09r27i8e5612") # t
p even_pairs("f09r27i8e5613") # f
p even_pairs("f09r27i8e5613a271") # f
p even_pairs("f09r27i8e5613a272") # t
