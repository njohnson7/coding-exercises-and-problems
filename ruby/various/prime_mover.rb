# prime_mover.rb

# Using the Ruby language, have the function PrimeMover(num) return the numth
# prime number. The range will be from 1 to 10^4. For example: if num is 16 the
# output should be 53 as 53 is the 16th prime number.

def prime_mover(num)
  primes = []
  current = 2
  while primes.size < num
    primes << current if prime?(current)
    current += 1
  end
  primes.last
end

def prime?(num)
  2.upto(num - 1) do |divisor|
    return false if num % divisor == 0
  end
  true
end

p prime_mover(16) # 53
p prime_mover(9) # 23
p prime_mover(100) # 541
