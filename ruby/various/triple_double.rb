# triple_double.rb

# Using the Ruby language, have the function TripleDouble(num1,num2) take both
# parameters being passed, and return 1 if there is a straight triple of a
# number at any place in num1 and also a straight double of the same number in
# num2. For example: if num1 equals 451999277 and num2 equals 41177722899, then
# return 1 because in the first parameter you have the straight triple 999 and
# you have a straight double, 99, of the same number in the second parameter. If
# this isn't the case, return 0.

def triple_double(num1, num2)
  num1, num2 = num1.to_s, num2.to_s
  num1.each_char.with_index do |digit, idx|
    next if idx >= num1.size - 2
    if num1[idx + 1] == digit && num1[idx + 2] == digit
      num2.each_char.with_index do |digit2, idx2|
        next if idx >= num1.size - 1 || digit2 != digit
        return 1 if num2[idx2 + 1] == digit
      end
    end
  end
  0
end

p triple_double(451999277, 41177722899) # 1
p triple_double(465555, 5579) # 1
p triple_double(67844, 66237) # 0
