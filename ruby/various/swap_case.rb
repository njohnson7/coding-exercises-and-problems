# swap_case.rb

# Have the function SwapCase(str) take the str parameter and swap the case of
# each character. For example: if str is "Hello World" the output should be
# hELLO wORLD. Let numbers and symbols stay the way they are.

def swap_case(str)
  str.swapcase
end

p swap_case("Hello World")
p swap_case("Hello-LOL")
p swap_case("Sup DUDE!!?")
