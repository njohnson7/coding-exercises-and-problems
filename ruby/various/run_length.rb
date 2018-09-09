# run_length.rb

# Using the Ruby language, have the function RunLength(str) take the str
# parameter being passed and return a compressed version of the string using the
# Run-length encoding algorithm. This algorithm works by taking the occurrence
# of each repeating character and outputting that number along with a single
# character of the repeating sequence. For example: "wwwggopp" would return
# 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols.

def run_length(str)
  result = ''
  count = 1
  idx = 0
  while idx < str.size
    letter = str[idx]
    if str[idx] == str[idx + 1]
      count += 1
    else
      result << "#{count}#{letter}"
      count = 1
    end
    idx += 1
  end
  result
end

p run_length("wwwggopp") # '3w2g1o2p'
p run_length("aabbcde") # "2a2b1c1d1e"
p run_length("wwwbbbw") # "3w3b1w"
