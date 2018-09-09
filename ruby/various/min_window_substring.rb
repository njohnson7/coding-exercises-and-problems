# min_window_substring.rb

# Using the Ruby language, have the function MinWindowSubstring(strArr) take the
# array of strings stored in strArr, which will contain only two strings, the
# first parameter being the string N and the second parameter being a string K
# of some characters, and your goal is to determine the smallest substring of N
# that contains all the characters in K. For example: if strArr is
# ["aaabaaddae", "aed"] then the smallest substring of N that contains the
# characters a, e, and d is "dae" located at the end of the string. So for this
# example your program should return the string dae.

# Another example: if strArr is ["aabdccdbcacd", "aad"] then the smallest
# substring of N that contains all of the characters in K is "aabd" which is
# located at the beginning of the string. Both parameters will be strings
# ranging in length from 2 to 50 characters and all of K's characters will exist
# somewhere in the string N. Both strings will only contains lowercase
# alphabetic characters.


def min_window_substring(arr)
  substrings = []
  str1, str2 = arr.first, arr.last
  str1.each_char.with_index do |_, idx|
    idx2 = idx
    while idx2 < str1.size
      current = str1[idx..idx2]
      substrings << current if current.size >= str2.size
      idx2 += 1
    end
  end
  substrings.select! do |substring|
    correct = true
    str2.each_char do |letter|
      correct = false unless substring.count(letter) >= str2.count(letter)
    end
    correct
  end
  substrings.min_by(&:size)
end

p min_window_substring(["aaabaaddae", "aed"]) # 'dae'
p min_window_substring(["aabdccdbcacd", "aad"]) # 'aabd'
p min_window_substring(["ahffaksfajeeubsne", "jefaa"]) # "aksfaje"
p min_window_substring(["aaffhkksemckelloe", "fhea"]) # "affhkkse"
