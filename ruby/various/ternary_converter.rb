# ternary_converter.rb

# Using the Ruby language, have the function TernaryConverter(num) take the num
# parameter being passed, which will always be a positive integer, and convert
# it into a ternary representation. For example: if num is 12 then your program
# should return 110.

def ternary_converter(num)
  result = ''
  until num < 3
    num, remainder = num.divmod(3)
    result.prepend(remainder.to_s)
  end
  result.prepend(num.to_s).to_i
end

p ternary_converter(12) # 110
p ternary_converter(21) # 210
p ternary_converter(67) # 2111
p ternary_converter(243) # 100_000
