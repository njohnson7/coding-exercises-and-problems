# longest_word.rb

# Have the function LongestWord(sen) take the sen parameter being passed and
# return the largest word in the string. If there are two or more words that are
# the same length, return the first word from the string with that length.
# Ignore punctuation and assume sen will not be empty.


def longest_word(sen)
  words = sen.split
  words.map! { |word| word.delete('^A-Za-z1-9_\'') }
  longest = words.first
  words.each_with_index do |word, idx|
    next if idx >= words.size - 1
    longest = longest.size < words[idx + 1].size ? words[idx + 1] : longest
  end
  longest
end

puts longest_word("fun&!! time")
puts longest_word("I love dogs")
puts longest_word("this is a testerino")
puts longest_word("Cats. are. the. bestest. man.")
puts longest_word("123456789 98765432")
puts longest_word("a confusing /:sentence:/[ this is not!!!!!!!~")
puts longest_word("what is_this i don't even?")
puts


# Alternate solution:
def longest_word(sen)
  sen.split.map { |word| /(\w+)/.match(word)[1] }.max_by(&:size)
end

puts longest_word("fun&!! time")
puts longest_word("I love dogs")
puts longest_word("this is a testerino")
puts longest_word("Cats. are. the. bestest. man.")
puts longest_word("123456789 98765432")
puts longest_word("a confusing /:sentence:/[ this is not!!!!!!!~")
puts longest_word("what is_this i don't even?")
