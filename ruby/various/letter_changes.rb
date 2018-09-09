# letter_changes.rb

# Have the function LetterChanges(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the letter following it in the alphabet (ie. c becomes d, z becomes a).
# Then capitalize every vowel in this new string (a, e, i, o, u) and finally
# return this modified string.

def letter_changes(str)
  str.each_char.with_index do |char, idx|
    if char =~ /[A-Za-z]/
      if char =~ /[Zz]/
        str[idx] = 'a'
      else
        str[idx] = (char.ord + 1).chr
      end
    end
  end
  str.each_char.with_index do |char, idx|
    str[idx] = char.upcase if char =~ /[aeiou]/
  end
  str
end

puts letter_changes("hello*3")
puts letter_changes("fun times!")
puts letter_changes("crazY")
puts


# Alternate solution:
def letter_changes(str)
  str.gsub(/[A-Za-z]/) do |char|
    char =~ /[Zz]/ ? 'a' : (char.ord + 1).chr
  end.tr('aeiou', 'AEIOU')
end

puts letter_changes("hello*3")
puts letter_changes("fun times!")
puts letter_changes("crazY")
