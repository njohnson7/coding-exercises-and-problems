# letter_count.rb

# Using the Ruby language, have the function LetterCount(str) take the str
# parameter being passed and return the first word with the greatest number of
# repeated letters. For example: "Today, is the greatest day ever!" should
# return greatest because it has 2 e's (and 2 t's) and it comes before ever
# which also has 2 e's. If there are no words with repeating letters return -1.
# Words will be separated by spaces.

def letter_count(str)
  words = str.split
  word_counts = Hash.new([])
  words.each do |word|
    ('a'..'z').each do |letter|
      count = word.downcase.count(letter)
      word_counts[count] += [word] if count > 1
    end
  end
  greatest_arr = word_counts.max_by { |count, word| count }
  greatest_arr.nil? ? -1 : greatest_arr.last.first
end

p letter_count("Today, is the greatest day ever!") # 'greatest'
p letter_count("Hello apple pie") # 'Hello'
p letter_count("No words") # -1
p letter_count("Hello apple pie what iss thisss") # 'Hello'
