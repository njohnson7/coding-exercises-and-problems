# additive_persistence.rb

# Using the Ruby language, have the function AdditivePersistence(num) take the
# num parameter being passed which will always be a positive integer and return
# its additive persistence which is the number of times you must add the digits
# in num until you reach a single digit. For example: if num is 2718 then your
# program should return 2 because 2 + 7 + 1 + 8 = 18 and 1 + 8 = 9 and you stop
# at 9.

def additive_persistence(num)
  digits = num.to_s.split('').map(&:to_i)
  result = num.to_s
  times = 0
  until result.to_s.size <= 1
    result = digits.reduce(:+)
    digits = result.to_s.split('').map(&:to_i)
    times += 1
  end
  times
end

p additive_persistence(2718)
p additive_persistence(4)
p additive_persistence(19)
puts


# Alternate solution:
def additive_persistence(num)
  count = 0
  until num < 10
    num = num.to_s.split('').map(&:to_i).reduce(:+)
    count += 1
  end
  count
end

p additive_persistence(2718)
p additive_persistence(4)
p additive_persistence(19)
