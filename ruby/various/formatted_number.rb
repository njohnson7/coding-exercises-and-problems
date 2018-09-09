# formatted_number.rb

# Using the Ruby language, have the function FormattedNumber(strArr) take the
# strArr parameter being passed, which will only contain a single element, and
# return the string true if it is a valid number that contains only digits with
# properly placed decimals and commas, otherwise return the string false. For
# example: if strArr is ["1,093,222.04"] then your program should return the
# string true, but if the input were ["1,093,22.04"] then your program should
# return the string false. The input may contain characters other than digits.

def formatted_number(str)
  str = str.first
  return false if str =~ /[^\d\.\,]/
  if str.include?('.')
    return false if str.count('.') > 1 || str.start_with?('.') || str.end_with?('.')
    str = str.split('.').first
  end
  if str.include?(',')
    return false if str.start_with?(',') || str.end_with?(',')
    parts = str.split(',')
    parts.each_with_index do |part, idx|
      return false if part.empty? || part.size > 3
      next if idx == 0
      return false if part.size < 3
    end
  else
    return false if str.size > 3
  end
  true
end

p formatted_number(["1,093,222.04"]) # true
p formatted_number(["1,093,22.04"]) # false
p formatted_number(["0.232567"]) # true
p formatted_number(["2,567.00.2"]) # false
p formatted_number(["23d"]) # false
p formatted_number(["898989898"]) # false

