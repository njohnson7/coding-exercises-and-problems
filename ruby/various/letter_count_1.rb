# letter_count_1.rb

# Using the Ruby language, have the function LetterCountI(str) take the str
# parameter being passed and return the first word with the greatest number of
# repeated letters. For example: "Today, is the greatest day ever!" should
# return greatest because it has 2 e's (and 2 t's) and it comes before ever
# which also has 2 e's. If there are no words with repeating letters return -1.
# Words will be separated by spaces.

def letter_count(str)
  words = str.split
  greatest = nil
  count = 1
  words.each do |word|
    letters = word.downcase.chars
    ('a'..'z').each do |letter|
      current_count = word.downcase.count(letter)
      if current_count > count
        greatest = word
        count = current_count
      end
    end
  end
  greatest || -1
end

puts letter_count("Today, is the greatest day ever!")
puts letter_count("Hello apple pie")
puts letter_count("No words")
puts letter_count("test this shit bro brb")
puts letter_count("coderbyte is cool")
puts letter_count("wtf bro this is crazy")
