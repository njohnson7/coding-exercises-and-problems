# formatted_division.rb

# Using the Ruby language, have the function FormattedDivision(num1,num2) take
# both parameters being passed, divide num1 by num2, and return the result as a
# string with properly formatted commas and 4 significant digits after the
# decimal place. For example: if num1 is 123456789 and num2 is 10000 the output
# should be "12,345.6789". The output must contain a number in the one's place
# even if it is a zero.

def formatted_division(num1, num2)
  result = (num1 / num2.to_f).round(4)
  left, right = result.to_s.split('.')
  left = left.reverse.scan(/\d{1,3}/).join(',').reverse
  if right.size < 4
    right += '0' until right.size == 4
  end
  "#{left}.#{right}"
end

p formatted_division(123456789, 10_000) # "12,345.6789"
p formatted_division(2,3) # 0.6667"
p formatted_division(10, 10) # "1.0000"
p formatted_division(100_000, 1)
p formatted_division(1000000, 1)
p formatted_division(100, 1)
p formatted_division(1000, 1)
p formatted_division(503394930, 43) # 11,706,858.8372
p formatted_division(9112, 2) # 4,556.0000
p formatted_division(101077282, 21123) # 4,785.1764
