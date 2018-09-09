# string_reduction.rb

# Using the Ruby language, have the function StringReduction(str) take the str
# parameter being passed and return the smallest number you can get through the
# following reduction method. The method is: Only the letters a, b, and c will
# be given in str and you must take two different adjacent characters and
# replace it with the third. For example "ac" can be replaced with "b" but "aa"
# cannot be replaced with anything. This method is done repeatedly until the
# string cannot be further reduced, and the length of the resulting string is to
# be outputted. For example: if str is "cab", "ca" can be reduced to "b" and you
# get "bb" (you can also reduce it to "cc"). The reduction is done so the output
# should be 2. If str is "bcab", "bc" reduces to "a", so you have "aab", then
# "ab" reduces to "c", and the final string "ac" is reduced to "b" so the output
# should be 1.

def string_reduction(str)
  idx = 0
  until str.chars.uniq.size == 1
    if idx >= str.size - 1
      idx = 0
      next
    end
    if str[idx] == 'a'
      if str[idx + 1] == 'b'
        str[idx..idx + 1] = 'c'
        idx = 0
      elsif str[idx + 1] == 'c'
        str[idx..idx + 1] = 'b'
        idx = 0
      else
        idx += 1
      end
    elsif str[idx] == 'b'
      if str[idx + 1] == 'a'
        str[idx..idx + 1] = 'c'
        idx = 0
      elsif str[idx + 1] == 'c'
        str[idx..idx + 1] = 'a'
        idx = 0
      else
        idx += 1
      end
    elsif str[idx] == 'c'
      if str[idx + 1] == 'a'
        str[idx..idx + 1] = 'b'
        idx = 0
      elsif str[idx + 1] == 'b'
        str[idx..idx + 1] = 'a'
        idx = 0
      else
        idx += 1
      end
    end
  end
  str.size
end

p string_reduction("cab") # 2
p string_reduction("bcab") # 1
p string_reduction("abcabc") # 2
p string_reduction("cccc") # 4
p string_reduction("ccaa") # 2
puts


# Alternate solution:
def string_reduction(str)
  if str.chars.uniq.size == 1
    str.size
  else
    string_reduction(str.sub(/ab|ba/, 'c').sub(/cb|bc/, 'a').sub(/ca|ac/, 'b'))
  end
end

p string_reduction("cab") # 2
p string_reduction("bcab") # 1
p string_reduction("abcabc") # 2
p string_reduction("cccc") # 4
p string_reduction("ccaa") # 2