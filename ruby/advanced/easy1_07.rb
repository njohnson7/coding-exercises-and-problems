# easy1_07.rb

def all?(arr)
  !!arr.each { |elem| yield(elem) || (return false) }
end

# recursive:
def all?(arr, &block)
  return true if arr.empty?
  block.call(arr.first) ? all?(arr.drop(1), &block) : false
end

p all?([1, 3, 5, 6]) { |value| value.odd? } == false
p all?([1, 3, 5, 7]) { |value| value.odd? } == true
p all?([2, 4, 6, 8]) { |value| value.even? } == true
p all?([1, 3, 5, 7]) { |value| value % 5 == 0 } == false
p all?([1, 3, 5, 7]) { |value| true } == true
p all?([1, 3, 5, 7]) { |value| false } == false
p all?([]) { |value| false } == true
