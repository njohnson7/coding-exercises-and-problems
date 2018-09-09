# multiplicative_persistence.rb

# Have the function MultiplicativePersistence(num) take the num parameter being
# passed which will always be a positive integer and return its multiplicative
# persistence which is the number of times you must multiply the digits in num
# until you reach a single digit. For example: if num is 39 then your program
# should return 3 because 3 * 9 = 27 then 2 * 7 = 14 and finally 1 * 4 = 4 and
# you stop at 4.

def multiplicative_persistence(num)
  count = 0
  until num < 10
    num = num.to_s.chars.map(&:to_i).reduce(:*)
    count += 1
  end
  count
end

p multiplicative_persistence(39)
p multiplicative_persistence(4)
p multiplicative_persistence(25)
