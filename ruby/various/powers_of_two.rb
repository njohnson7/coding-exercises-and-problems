# powers_of_two.rb

# Using the Ruby language, have the function PowersofTwo(num) take the num
# parameter being passed which will be an integer and return the string true if
# it's a power of two. If it's not return the string false. For example if the
# input is 16 then your program should return the string true but if the input
# is 22 then the output should be the string false.

def powers_of_two(num)
  until num < 2 || num.odd?
    return true if num == 2
    num /= 2
  end
  false
end

p powers_of_two(16) # t
p powers_of_two(22) # f
p powers_of_two(4) # t
p powers_of_two(124) # f
p powers_of_two(0) # f
p powers_of_two(3) # f
p powers_of_two(32) # t
p powers_of_two(8) # t
p powers_of_two(2) # t
puts


# Alternate solution:
def powers_of_two(num)
  result = 2
  until result > num
    return true if result == num
    result *= 2
  end
  false
end

p powers_of_two(16) # t
p powers_of_two(22) # f
p powers_of_two(4) # t
p powers_of_two(124) # f
p powers_of_two(0) # f
p powers_of_two(3) # f
p powers_of_two(32) # t
p powers_of_two(8) # t
p powers_of_two(2) # t
