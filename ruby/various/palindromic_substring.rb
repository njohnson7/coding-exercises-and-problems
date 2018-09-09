# palindromic_substring.rb

# Using the Ruby language, have the function PalindromicSubstring(str) take the
# str parameter being passed and find the longest palindromic substring, which
# means the longest substring which is read the same forwards as it is
# backwards. For example: if str is "abracecars" then your program should return
# the string racecar because it is the longest palindrome within the input
# string.

# The input will only contain lowercase alphabetic characters. The longest
# palindromic substring will always be unique, but if there is none that is
# longer than 2 characters, return the string none.

def palindromic_substring(str)
  substrings = []
  str.each_char.with_index do |_, idx|
    idx2 = idx
    while idx2 < str.size
      substrings << str[idx..idx2]
      idx2 += 1
    end
  end
  substrings.select { |substring| palindrome?(substring) }.max_by(&:size) || 'none'
end

def palindrome?(str)
  str.size > 2 && str == str.reverse
end

p palindromic_substring("abracecars") # 'racecar'
p palindromic_substring("hellosannasmith") # "sannas"
p palindromic_substring("abcdefgg") # 'none'
