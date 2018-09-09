# other_products.rb

# Using the Ruby language, have the function OtherProducts(arr) take the array
# of numbers stored in arr and return a new list of the products of all the
# other numbers in the array for each element. For example: if arr is [1, 2, 3,
# 4, 5] then the new array, where each location in the new array is the product
# of all other elements, is [120, 60, 40, 30, 24]. The following calculations
# were performed to get this answer: [(2*3*4*5), (1*3*4*5), (1*2*4*5),
# (1*2*3*5), (1*2*3*4)]. You should generate this new array and then return the
# numbers as a string joined by a hyphen: 120-60-40-30-24. The array will
# contain at most 10 elements and at least 1 element of only positive integers.


# Doesn't work w/ duplicate nums!
def other_products(arr)
  products = []
  arr.each_with_index do |num, idx|
    products << (arr - [num]).reduce(:*)
  end
  products.join('-')
end

p other_products([1, 2, 3, 4, 5])
p other_products([1,4,3])
p other_products([3,1,2,6])
p other_products([3,1,2,3])
p other_products([1,1,1])
p other_products([2,2,2,2])
p other_products([3])
puts


# Alternate solution for duplicate nums
def other_products(arr)
  products = []
  0.upto(arr.size - 1) do |idx|
    to_multiply = []
    idx2 = -1
    while idx2 < arr.size - 1
      idx2 += 1
      next if idx == idx2
      to_multiply << arr[idx2]
    end
    products << to_multiply.reduce(:*)
  end
  products.join('-')
end


p other_products([1, 2, 3, 4, 5])
p other_products([1,4,3])
p other_products([3,1,2,6])
p other_products([3,1,2,3])
p other_products([1,1,1])
p other_products([2,2,2,2])
p other_products([3])
puts


# Alternate solution 2:
def other_products(arr)
  (0...arr.size).each_with_object([]) do |idx, products|
    to_multiply = arr[0...idx] + arr[idx + 1..-1]
    products << to_multiply.reduce(:*)
  end.join('-')
end


p other_products([1, 2, 3, 4, 5])
p other_products([1,4,3])
p other_products([3,1,2,6])
p other_products([3,1,2,3])
p other_products([1,1,1])
p other_products([2,2,2,2])
p other_products([3])
