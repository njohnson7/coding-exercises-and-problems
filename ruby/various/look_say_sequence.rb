# look_say_sequence.rb

# Using the Ruby language, have the function LookSaySequence(num) take the num
# parameter being passed and return the next number in the sequence according to
# the following rule: to generate the next number in a sequence read off the
# digits of the given number, counting the number of digits in groups of the
# same digit. For example, the sequence beginning with 1 would be: 1, 11, 21,
# 1211, ... The 11 comes from there being "one 1" before it and the 21 comes
# from there being "two 1's" before it. So your program should return the next
# number in the sequence given num.

def look_say_sequence(num)
  num = num.to_s
  split_nums = []
  result = ''
  num.each_char do |char|
    if split_nums.last == char
      split_nums[-1] += char
    else
      split_nums << char
    end
  end
  split_nums.each do |n|
    result << "#{n.size}#{n[0]}"
  end
  result.to_i
end

p look_say_sequence(21) # 1211
p look_say_sequence(1211) # 111221
p look_say_sequence(2466) # 121426
