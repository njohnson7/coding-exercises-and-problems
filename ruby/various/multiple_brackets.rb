# multiple_brackets.rb

# Using the Ruby language, have the function MultipleBrackets(str) take the str
# parameter being passed and return 1 #ofBrackets if the brackets are correctly
# matched and each one is accounted for. Otherwise return 0. For example: if str
# is "(hello [world])(!)", then the output should be 1 3 because all the
# brackets are matched and there are 3 pairs of brackets, but if str is "((hello
# [world])" the the output should be 0 because the brackets do not correctly
# match up. Only "(", ")", "[", and "]" will be used as brackets. If str
# contains no brackets return 1.

def multiple_brackets(str)
  return '1' unless str =~ /\(|\)|\[|\]/
  bracket_count = 0
  if str =~ /\(|\)/
    counter = 0
    str.each_char do |char|
      if char == '('
        counter += 1
        bracket_count += 1
      elsif char == ')'
        counter -= 1
      end
      return '0' if counter.negative?
    end
    return '0' unless counter == 0
  end
  if str =~ /\[|\]/
    counter = 0
    str.each_char do |char|
      if char == '['
        counter += 1
        bracket_count += 1
      elsif char == ']'
        counter -= 1
      end
      return '0' if counter.negative?
    end
    return '0' unless counter == 0
  end
  "1 #{bracket_count}"
end

p multiple_brackets("(hello [world])(!)") # '1 3'
p multiple_brackets("((hello [world])") # '0'
p multiple_brackets("(coder)[byte)]") # 0
p multiple_brackets("(c([od]er)) b(yt[e])") # 1 5
p multiple_brackets("test") # 1
