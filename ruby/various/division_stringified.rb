# division_stringified.rb

# Using the Ruby language, have the function DivisionStringified(num1,num2) take
# both parameters being passed, divide num1 by num2, and return the result as a
# string with properly formatted commas. If an answer is only 3 digits long,
# return the number with no commas (ie. 2 / 3 should output "1"). For example:
# if num1 is 123456789 and num2 is 10000 the output should be "12,346".

def division_stringified(num1, num2)
  result_digits = (((num1.to_f / num2.to_f).round).to_s).chars
  reversed_digits = result_digits.reverse
  result = ''
  idx = 0
  while idx < reversed_digits.size
    result << reversed_digits[idx]
    result << ',' if idx % 3 == 2
    idx += 1
  end
  result.reverse!
  result[0] = '' if result.start_with?(',')
  result[-1] = '' if result.end_with?(',')
  result
end

p division_stringified(2, 3)
p division_stringified(123456789, 10_000)
p division_stringified(5, 2)
p division_stringified(6874, 67)
p division_stringified(100_000_000, 1000)
puts


# Alternate solution:
def division_stringified(num1, num2)
  reverse_result = (num1 / num2.to_f).round.to_s.reverse.chars
  reverse_result.each_slice(3).map(&:join).join(',').reverse
end

p division_stringified(2, 3)
p division_stringified(123456789, 10_000)
p division_stringified(5, 2)
p division_stringified(6874, 67)
p division_stringified(100_000_000, 1000)
puts


# Alternate solution 2:
def division_stringified(num1, num2)
  (num1 / num2.to_f).round.to_s.reverse.scan(/\d?\d?\d/).join(',').reverse
end

p division_stringified(2, 3)
p division_stringified(123456789, 10_000)
p division_stringified(5, 2)
p division_stringified(6874, 67)
p division_stringified(100_000_000, 1000)
