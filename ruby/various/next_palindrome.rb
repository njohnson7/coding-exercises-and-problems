# next_palindrome.rb

# Using the Ruby language, have the function NextPalindrome(num) take the num
# parameter being passed and return the next largest palindromic number. The
# input can be any positive integer. For example: if num is 24, then your
# program should return 33 because that is the next largest number that is a
# palindrome.

def next_palindrome(num)
  while true
    num += 1
    return num if num.to_s == num.to_s.reverse
  end
end

p next_palindrome(24) # 33
p next_palindrome(2) # 3
p next_palindrome(180) # 181
puts


# Alternate solution w/ recursion:
def next_palindrome(num)
  num += 1
  num.to_s == num.to_s.reverse ? num : next_palindrome(num)
end

p next_palindrome(24) # 33
p next_palindrome(2) # 3
p next_palindrome(180) # 181
