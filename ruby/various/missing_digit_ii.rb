# missing_digit_ii.rb

# Using the Ruby language, have the function MissingDigitII(str) take the str
# parameter, which will be a simple mathematical formula with three numbers, a
# single operator (+, -, *, or /) and an equal sign (=) and return the two
# digits that complete the equation. In two of the numbers in the equation,
# there will be a single ? character, and your program should determine what
# digits are missing and return them separated by a space. For example, if str
# is "38?5 * 3 = 1?595" then your program should output 6 1.

# The ? character will always appear in both the first number and the last
# number in the mathematical expression. There will always be a unique solution.

def missing_digit_ii(str)
  str = str.sub('=', '==').sub('?', 'x')
  if str.include?('/')
    str.sub!(/(\s\d+)/, '\1.0')
  end
  9.downto(0) do |num1|
    9.downto(0) do |num2|
      next if num1 == 0 && str.include?(' x')
      next if num2 == 0 && str.include?(' ?')
      current = str.sub('x', num1.to_s).sub('?', num2.to_s)
      next if current.include?('/ 0')
      return [num1, num2].join(' ') if eval(current)
    end
  end
end

p missing_digit_ii("38?5 * 3 = 1?595") # '6 1'
p missing_digit_ii("56? * 106 = 5?678") # "3 9"
p missing_digit_ii("18?1 + 9 = 189?") # '8 0'
p missing_digit_ii("50? / 5 = ?00") # '0 1'
p missing_digit_ii("5555? - 4261 = ?1294") # '5 5'
