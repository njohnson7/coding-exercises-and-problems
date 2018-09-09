# swap_ii.rb

# Using the Ruby language, have the function SwapII(str) take the str parameter
# and swap the case of each character. Then, if a letter is between two numbers
# (without separation), switch the places of the two numbers. For example: if
# str is "6Hello4 -8World, 7 yes3" the output should be 4hELLO6 -8wORLD, 7 YES3.


def swap_ii(str)
  str.swapcase!
  regex = /\d[a-zA-Z]+\d/
  idx = 0
  while idx < str.size - 1
    start_idx = str[idx..-1] =~ (regex)
    if start_idx
      end_idx = start_idx + str[start_idx..-1].match(regex).to_s.size - 1
      str[start_idx], str[end_idx] = str[end_idx], str[start_idx]
      idx = end_idx
    end
    idx += 1
  end
  str
end

p swap_ii("6Hello4 -8World, 7 yes3") # '4hELLO6 -8wORLD, 7 YES3'
p swap_ii("Hello -5LOL6")# "hELLO -6lol5"
p swap_ii("2S 6 du5d4e") # '2s 6 DU4D5E'
