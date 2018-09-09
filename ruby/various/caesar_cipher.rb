# caesar_cipher.rb

# Using the Ruby language, have the function CaesarCipher(str,num) take the str
# parameter and perform a Caesar Cipher shift on it using the num parameter as
# the shifting number. A Caesar Cipher works by shifting each letter in the
# string N places down in the alphabet (in this case N will be num).
# Punctuation, spaces, and capitalization should remain intact. For example if
# the string is "Caesar Cipher" and num is 2 the output should be "Ecguct
# Ekrjgt".

def caesar_cipher(str, num)
  num = num % 26
  str.each_char.with_index do |char, idx|
    if char =~ /[a-z]/
      ord = char.ord + num
      ord -= 26 if ord > 122
      str[idx] = ord.chr
    elsif char =~ /[A-Z]/
      ord = char.ord + num
      ord -= 26 if ord > 90
      str[idx] = ord.chr
    end
  end
  str
end

p caesar_cipher("Caesar Cipher", 2) # "Ecguct Ekrjgt"
p caesar_cipher("Hello", 4) # "Lipps"
p caesar_cipher('abc', 0) # 'abc'
p caesar_cipher('coderBYTE', 2) # 'eqfgtDAVG'
p caesar_cipher('dogs', 8) # 'lwoa'
p caesar_cipher('byte', 13) # 'olgr'
