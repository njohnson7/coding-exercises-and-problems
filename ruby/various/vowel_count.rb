# vowel_count.rb

# Have the function VowelCount(str) take the str string parameter being passed
# and return the number of vowels the string contains (ie. "All cows eat grass"
# would return 5). Do not count y as a vowel for this challenge.

def vowel_count(str)
  str.downcase.count('aeiou')
end

puts vowel_count("All cows eat grass" )
puts vowel_count("hello")
puts vowel_count("coderbyte")
puts vowel_count("")
