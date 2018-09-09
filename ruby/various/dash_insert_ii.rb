# dash_insert_ii.rb

# Using the Ruby language, have the function DashInsertII(str) insert dashes
# ('-') between each two odd numbers and insert asterisks ('*') between each two
# even numbers in str. For example: if str is 4546793 the output should be
# 454*67-9-3. Don't count zero as an odd or even number.

def dash_insert_ii(str)
  result = ''
  str.each_char.with_index do |char, idx|
    result << char
    next if char == '0' || idx >= str.size - 1 || str[idx + 1] == '0'
    if char.to_i.even? && str[idx + 1].to_i.even?
      result << '*'
    elsif char.to_i.odd? && str[idx + 1].to_i.odd?
      result << '-'
    end
  end
  result
end

p dash_insert_ii('4546793') # 454*67-9-3
p dash_insert_ii('99946') # 9-9-94*6
p dash_insert_ii('56647304') # 56*6*47-304
p dash_insert_ii("10120") # 10120
p dash_insert_ii("60497642") # 6049-76*4*2
