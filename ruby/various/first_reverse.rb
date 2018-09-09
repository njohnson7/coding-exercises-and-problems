# first_reverse.rb
# Have the function FirstReverse(str) take the str parameter
# being passed and return the string in reversed order.


def first_reverse(str)
  str.reverse
end

puts first_reverse('coderbyte')
puts


# Alternate solution
def first_reverse(str)
  str.each_char.with_object('') { |c, result| result.prepend(c) }
end

puts first_reverse('coderbyte')
