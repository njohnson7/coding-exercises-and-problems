# first_factorial.rb
# Have the function FirstFactorial(num) take the num
# parameter being passed and return the factorial of it (e.g. if num = 4, return
# (4 * 3 * 2 * 1)). For the test cases, the range will be between 1 and 18.

def first_factorial(num)
  result = 1
  2.upto(num) { |n| result *= n }
  result
end

puts first_factorial(4)
puts first_factorial(8)
puts first_factorial(5)
puts first_factorial(18)
puts first_factorial(1)
puts


# Alternate solution (recursive):
def first_factorial(num)
  num <= 1 ? 1 : num * first_factorial(num - 1)
end

puts first_factorial(4)
puts first_factorial(8)
puts first_factorial(5)
puts first_factorial(18)
puts first_factorial(1)
puts



# Alternate solution 2:
def first_factorial(num)
  num.downto(1).reduce(:*)
end

puts first_factorial(4)
puts first_factorial(8)
puts first_factorial(5)
puts first_factorial(18)
puts first_factorial(1)
