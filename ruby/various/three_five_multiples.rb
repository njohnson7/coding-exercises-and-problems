# three_five_multiples.rb

# Have the function ThreeFiveMultiples(num) return the sum of all the multiples
# of 3 and 5 that are below num. For example: if num is 10, the multiples of 3
# and 5 that are below 10 are 3, 5, 6, and 9, and adding them up you get 23, so
# your program should return 23. The integer being passed will be between 1 and
# 100.

def three_five_multiples(num)
  multiples = []
  3.upto(num - 1) do |n|
    multiples << n if n % 3 == 0 || n % 5 == 0
  end
  multiples.reduce(0, :+)
end

p three_five_multiples(10) # 23
p three_five_multiples(6) # 8
p three_five_multiples(1) # 0
