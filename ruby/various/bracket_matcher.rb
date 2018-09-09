# bracket_matcher.rb

# Using the Ruby language, have the function BracketMatcher(str) take the str
# parameter being passed and return 1 if the brackets are correctly matched and
# each one is accounted for. Otherwise return 0. For example: if str is "(hello
# (world))", then the output should be 1, but if str is "((hello (world))" the
# the output should be 0 because the brackets do not correctly match up. Only
# "(" and ")" will be used as brackets. If str contains no brackets return 1.

def bracket_matcher(str)
  count = 0
  str.each_char do |char|
    if char == '(' then count += 1
    elsif char == ')' then count -= 1
    end
    return 0 if count < 0
  end
  count == 0 ? 1 : 0
end

p bracket_matcher("(hello (world))") # 1
p bracket_matcher("((hello (world))") # 0
p bracket_matcher("(coder)(byte))") # 0
p bracket_matcher("(c(oder)) b(yte)") # 1
