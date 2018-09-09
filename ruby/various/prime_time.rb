# prime_time.rb

# Using the Ruby language, have the function PrimeTime(num) take the num
# parameter being passed and return the string true if the parameter is a prime
# number, otherwise return the string false. The range will be between 1 and
# 2^16.

def prime_time(num)
  2.upto(num - 1) do |divisor|
    return 'false' if num % divisor == 0
  end
  'true'
end

p prime_time(19) # t
p prime_time(110) # f
p prime_time(7) # t
p prime_time(23) # t
p prime_time(121) # f
p prime_time(2) # t
