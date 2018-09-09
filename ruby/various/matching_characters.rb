# matching_characters.rb

# Using the Ruby language, have the function MatchingCharacters(str) take the
# str parameter being passed and determine the largest number of unique
# characters that exists between a pair of matching letters anywhere in the
# string. For example: if str is "ahyjakh" then there are only two pairs of
# matching letters, the two a's and the two h's. Between the pair of a's there
# are 3 unique characters: h, y, and j. Between the h's there are 4 unique
# characters: y, j, a, and k. So for this example your program should return 4.

# Another example: if str is "ghececgkaem" then your program should return 5
# because the most unique characters exists within the farthest pair of e
# characters. The input string may not contain any character pairs, and in that
# case your program should just return 0. The input will only consist of
# lowercase alphabetic characters.

def matching_characters(str)
  matching_letters = Hash.new([])
  unique_chars_count = 0
  str.each_char.with_index do |letter, idx|
    matching_letters[letter] += [idx] if str.count(letter) > 1
  end
  matching_letters.each do |letter, indices|
    current_count = str[indices.first + 1...indices.last].chars.uniq.size
    unique_chars_count = current_count if current_count > unique_chars_count
  end
  unique_chars_count
end

p matching_characters("ahyjakh") # 4
p matching_characters("ghececgkaem") # 5
p matching_characters("mmmerme") # 3
p matching_characters("abccdefghi") # 0
