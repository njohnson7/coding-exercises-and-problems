# correct_path.rb

# Using the Ruby language, have the function CorrectPath(str) read the str
# parameter being passed, which will represent the movements made in a 5x5 grid
# of cells starting from the top left position. The characters in the input
# string will be entirely composed of: r, l, u, d, ?. Each of the characters
# stand for the direction to take within the grid, for example: r = right, l =
# left, u = up, d = down. Your goal is to determine what characters the question
# marks should be in order for a path to be created to go from the top left of
# the grid all the way to the bottom right without touching previously travelled
# on cells in the grid.

# For example: if str is "r?d?drdd" then your program should output the final
# correct string that will allow a path to be formed from the top left of a 5x5
# grid to the bottom right. For this input, your program should therefore return
# the string rrdrdrdd. There will only ever be one correct path and there will
# always be at least one question mark within the input string.

def correct_path(str)
  blanks = str.count('?')
  possible_directions = %w(r l d u).repeated_permutation(blanks).to_a
  possible_directions.each do |directions|
    valid = true
    new_str = str
    (0...blanks).each do |idx|
      new_str = new_str.sub(/\?/, directions[idx])
    end
    position = 0
    moved_positions = []
    idx = 0
    while idx < new_str.size
      moved_positions << position
      case new_str[idx]
      when 'r'
        if position % 5 == 4
          valid = false
          break
        end
        position += 1
      when 'l'
        if position % 5 == 0
          valid = false
          break
        end
        position -= 1
      when 'd' then position += 5
      when 'u' then position -= 5
      end
      idx += 1
      if position < 0 || position > 24 || moved_positions.include?(position)
        valid = false
        break
      end
    end
    return new_str if position == 24 && valid == true
  end
end

p correct_path("r?d?drdd") # rRdRdrdd
p correct_path("???rrurdr?") # "DDDrrurdrD"
p correct_path("drdr??rrddd?") # drdrUUrrdddD
p correct_path("????ruu??dd?") # "RRDDruuRDddD"?????
p correct_path("rdrd??d?rr??") # "rdrdLLdRrrRD"

#  0  1  2  3  4
#  5  6  7  8  9
#  10 11 12 13 14
#  15 16 17 18 19
#  20 21 22 23 24