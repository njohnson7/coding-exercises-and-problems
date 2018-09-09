# letter_capitalize.rb

# Using the Ruby language, have the function LetterCapitalize(str) take the str
# parameter being passed and capitalize the first letter of each word. Words
# will be separated by only one space.

def letter_capitalize(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

puts letter_capitalize("hello world")
puts letter_capitalize("i ran there")
puts letter_capitalize("")
puts


# Alternate solution:
def letter_capitalize(str)
  str.gsub(/\w+/) { |word| word.capitalize }
end

puts letter_capitalize("hello world")
puts letter_capitalize("i ran there")
puts letter_capitalize("")
