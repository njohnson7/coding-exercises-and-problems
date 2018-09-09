# html_elements.rb

# Using the Ruby language, have the function HTMLElements(str) read the str
# parameter being passed which will be a string of HTML DOM elements and plain
# text. The elements that will be used are: b, i, em, div, p. For example: if
# str is "<div><b><p>hello world</p></b></div>" then this string of DOM elements
# is nested correctly so your program should return the string true.

# If a string is not nested correctly, return the first element encountered
# where, if changed into a different element, would result in a properly
# formatted string. If the string is not formatted properly, then it will only
# be one element that needs to be changed. For example: if str is
# "<div><i>hello</i>world</b>" then your program should return the string div
# because if the first <div> element were changed into a <b>, the string would
# be properly formatted.

def html_elements(str)
  elements = str.scan(/<\/?\w+>/)
  div_count, b_count, i_count, em_count, p_count = 0, 0, 0, 0, 0
  elements.each_with_index do |element, idx|
    remaining = elements[idx + 1..-1]
    case element
    when '<div>'
      return 'div' if remaining.include?('<div>') || !(remaining.include?('</div>'))
      div_count += 1
    when '<b>'
      return 'b' if remaining.include?('<b>') || !(remaining.include?('</b>'))
      b_count += 1
    when '<i>'
      return 'i' if remaining.include?('<i>') || !(remaining.include?('</i>'))
      i_count += 1
    when '<em>'
      return 'em' if remaining.include?('<em>') || !(remaining.include?('</em>'))
      em_count += 1
    when '<p>'
      return 'p' if remaining.include?('<p>') || !(remaining.include?('</p>'))
      p_count += 1
    when '</div>'
      div_count -= 1
      return 'div' if div_count.negative?
    when '</b>'
      b_count -= 1
      return 'b' if div_count.negative?
    when '</i>'
      i_count -= 1
      return 'i' if div_count.negative?
    when '</em>'
      em_count -= 1
      return 'em' if div_count.negative?
    when '</p>'
      p_count -= 1
      return 'p' if div_count.negative?
    end
  end
  'true'
end

def html_elements(str)
  elements = str.scan(/<\/?\w+>/)

end

# def correctly_nested?(str)
#   elements = str.scan(/<\/?\w+>/)

# end

p html_elements("<div><b><p>hello world</p></b></div>") # 'true'
p html_elements("<div><i>hello</i>world</b>") # 'div'
p html_elements("<div><div><b></b></div></p>") # 'div'
p html_elements("<div>abc</div><p><em><i>test test test</b></em></p>") # 'i'
p html_elements("<em></em><em></em><p></b>") # 'p'
p html_elements("<p><p><em></em><p></p><i></p>") # 'i'
