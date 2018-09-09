# prime_checker.rb

# Using the Ruby language, have the function PrimeChecker(num) take num and
# return 1 if any arrangement of num comes out to be a prime number, otherwise
# return 0. For example: if num is 910, the output should be 1 because 910 can
# be arranged into 109 or 019, both of which are primes.

def prime_checker(num)
  digits = num.to_s.chars
  permutations = digits.permutation(digits.size).map { |n| n.join.to_i }.uniq
  # permutations.reject! { |num| num.to_s.size < digits.size }
  permutations.each do |permutation|
    return 1 if prime?(permutation)
  end
  0
end

def prime?(num)
  return false if num <= 1
  2.upto(num - 1) do |divisor|
    return false if num % divisor == 0
  end
  true
end

p prime_checker(910) # 1
p prime_checker(98) # 1
p prime_checker(598) # 1
p prime_checker(99) # 0
p prime_checker(100) # 0
p prime_checker(30) # 1
