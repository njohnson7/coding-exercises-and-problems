# missing_digit.rb

# Using the Ruby language, have the function MissingDigit(str) take the str
# parameter, which will be a simple mathematical formula with three numbers, a
# single operator (+, -, *, or /) and an equal sign (=) and return the digit
# that completes the equation. In one of the numbers in the equation, there will
# be an x character, and your program should determine what digit is missing.
# For example, if str is "3x + 12 = 46" then your program should output 4. The x
# character can appear in any of the three numbers and all three numbers will be
# greater than or equal to 0 and less than or equal to 1000000.

def missing_digit(str)
  equation, result = str.delete(' ').split('=')
  if result =~ /x/
    (0..9).each do |digit|
      return digit if eval(equation) == (result.sub('x', digit.to_s)).to_i
    end
  else
    (0..9).each do |digit|
      next if digit == 0 && equation =~ /\//
      return digit if eval(equation.sub('x', digit.to_s)) == result.to_i
    end
  end
end

p missing_digit("3x + 12 = 46") # 4
p missing_digit("4 - 2 = x") # 2
p missing_digit("1x0 * 12 = 1200") # 0
p missing_digit("24 / x = 12") # 2
