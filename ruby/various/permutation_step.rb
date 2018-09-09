# permutation_step.rb

# Using the Ruby language, have the function PermutationStep(num) take the num
# parameter being passed and return the next number greater than num using the
# same digits. For example: if num is 123 return 132, if it's 12453 return
# 12534. If a number has no greater permutations, return -1 (ie. 999).

def permutation_step(num)
  digits = num.to_s.chars
  permutations = digits.permutation(digits.size).map(&:join).map(&:to_i).uniq.sort
  permutations.each do |permutation|
    return permutation if permutation > num
  end
  -1
end

p permutation_step(123) # 132
p permutation_step(12453) # 12534
p permutation_step(999) # -1
p permutation_step(11121) # 11211
p permutation_step(41352) # 41523
