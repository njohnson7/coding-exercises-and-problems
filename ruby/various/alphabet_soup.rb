# alphabet_soup.rb

# Using the Ruby language, have the function AlphabetSoup(str) take the str
# string parameter being passed and return the string with the letters in
# alphabetical order (ie. hello becomes ehllo). Assume numbers and punctuation
# symbols will not be included in the string.

def alphabet_soup(str)
  str.chars.sort_by { |char| char.downcase }.join
end

puts alphabet_soup("hello")
puts alphabet_soup("coderbyte")
puts alphabet_soup("hooplah")
puts alphabet_soup("TacoPat")
