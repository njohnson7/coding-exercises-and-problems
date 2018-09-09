# word_split.rb

# Using the Ruby language, have the function WordSplit(strArr) read the array of
# strings stored in strArr, which will contain 2 elements: the first element
# will be a sequence of characters, and the second element will be a long string
# of comma-separated words, in alphabetical order, that represents a dictionary
# of some arbitrary length. For example: strArr can be: ["hellocat",
# "apple,bat,cat,goodbye,hello,yellow,why"]. Your goal is to determine if the
# first element in the input can be split into two words, where both words exist
# in the dictionary that is provided in the second input. In this example, the
# first element can be split into two words: hello and cat because both of those
# words are in the dictionary.

# Your program should return the two words that exist in the dictionary
# separated by a comma. So for the example above, your program should return
# hello,cat. There will only be one correct way to split the first element of
# characters into two words. If there is no way to split string into two words
# that exist in the dictionary, return the string not possible. The first
# element itself will never exist in the dictionary as a real word.

def word_split(arr)
  word, dictionary = arr.first, arr.last.split(',')
  idx = 0
  while idx < word.size - 1
    left, right = word[0..idx], word[idx + 1..-1]
    if dictionary.include?(left) && dictionary.include?(right)
      return [left, right].join(',')
    end
    idx += 1
  end
  'not possible'
end

p word_split(["hellocat", "apple,bat,cat,goodbye,hello,yellow,why"]) # 'hello,cat'
p word_split(["baseball", "a,all,b,ball,bas,base,cat,code,d,e,quit,z"]) # "base,ball"
p word_split(["abcgefd", "a,ab,abc,abcg,b,c,dog,e,efd,zzzz"]) # "abcg,efd"
p word_split(['testerino', 'crazy,cat,dog,fish']) # 'not possible'
