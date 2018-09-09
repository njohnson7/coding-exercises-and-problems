# three_numbers.rb

# Using the Ruby language, have the function ThreeNumbers(str) take the str
# parameter being passed and determine if exactly three unique, single-digit
# integers occur within each word in the string. The integers can appear
# anywhere in the word, but they cannot be all adjacent to each other. If every
# word contains exactly 3 unique integers somewhere within it, then return the
# string true, otherwise return the string false. For example: if str is
# "2hell6o3 wor6l7d2" then your program should return "true" but if the string
# is "hell268o w6or2l4d" then your program should return "false" because all the
# integers are adjacent to each other in the first word.

def three_numbers(str)
  digits = str.split.map { |word| word.scan(/\d+/).sort_by(&:size) }
  digits.each do |set|
    if set.size == 2 && set.first.size == 1 && set.last.size == 2
      set[1], set[2] = set.last[0], set.last[1]
    end
    set.map!(&:to_i).uniq!
    return false unless set.size == 3
  end
  true
end

p three_numbers("2hell6o3 wor6l7d2") # 'true'
p three_numbers("hell268o w6or2l4d" ) # f
p three_numbers("2a3b5 w1o2rl3d g1gg92") # t
p three_numbers("21aa3a ggg4g4g6ggg") # f
