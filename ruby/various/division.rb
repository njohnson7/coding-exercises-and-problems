# division.rb

# Using the Ruby language, have the function Division(num1,num2) take both
# parameters being passed and return the Greatest Common Factor. That is, return
# the greatest number that evenly goes into both numbers with no remainder. For
# example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be
# 4. The range for both parameters will be from 1 to 10^3.

def division(num1, num2)
  small, big = [num1, num2].sort
  divisors = []
  1.upto(small) do |divisor|
    divisors << divisor if small % divisor == 0
  end
  divisors.reverse.each do |divisor|
    return divisor if big % divisor == 0
  end
end

p division(12, 16) # 4
p division(7, 3) # 1
p division(36, 54) # 18
