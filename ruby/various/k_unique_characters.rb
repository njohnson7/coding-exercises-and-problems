# k_unique_characters.rb

# Using the Ruby language, have the function KUniqueCharacters(str) take the str
# parameter being passed and find the longest substring that contains k unique
# characters, where k will be the first character from the string. The substring
# will start from the second position in the string because the first character
# will be the integer k. For example: if str is "2aabbacbaa" there are several
# substrings that all contain 2 unique characters, namely: ["aabba", "ac", "cb",
# "ba"], but your program should return "aabba" because it is the longest
# substring. If there are multiple longest substrings, then return the first
# substring encountered with the longest length. k will range from 1 to 6.

def k_unique_characters(str)
  k, str = str[0].to_i, str[1..-1]
  substrings = []
  str.each_char.with_index do |char, idx|
    idx2 = idx
    while idx2 < str.size
      substrings << str[idx..idx2]
      idx2 += 1
    end
  end
  substrings.select! { |substring| substring.chars.uniq.size == k }
  substrings.max_by(&:size)
end

p k_unique_characters("2aabbacbaa") # "aabba"
p k_unique_characters("3aabacbebebe") # "cbebebe"
p k_unique_characters("2aabbcbbbadef") # "bbcbbb"
p k_unique_characters("2aabbcbbbadefaaabbb") # "bbcbbb"
