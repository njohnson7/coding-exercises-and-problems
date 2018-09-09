# simple_adding.rb

# Have the function SimpleAdding(num) add up all the numbers from 1 to num. For
# the test cases, the parameter num will be any number from 1 to 1000.

def simple_adding(num)
  1.upto(num).reduce(:+)
end

puts simple_adding(12)
puts simple_adding(140)
puts simple_adding(1)
puts simple_adding(1000)
puts simple_adding(4)
