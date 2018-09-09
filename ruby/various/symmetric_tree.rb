# symmetric_tree.rb

# Using the Ruby language, have the function SymmetricTree(strArr) take the
# array of strings stored in strArr, which will represent a binary tree, and
# determine if the tree is symmetric (a mirror image of itself). The array will
# be implemented similar to how a binary heap is implemented, except the tree
# may not be complete and NULL nodes on any level of the tree will be
# represented with a #. For example: if strArr is ["1", "2", "2", "3", "#", "#",
# "3"] then this tree looks like the following:

#      1
#     / \
#    2   2
#   /\   /\
#  3 #  #  3

# For the input above, your program should return the string true because the
# binary tree is symmetric.

def symmetric_tree(arr)
  rows = Hash.new([])
  n = 0
  until arr.empty?
    (2**n).times { rows[n] += [arr.shift] }
    n += 1
  end
  rows.values.each do |row|
    return false unless row == row.reverse
  end
  true
end

p symmetric_tree(["1", "2", "2", "3", "#", "#", "3"]) # 'true'
p symmetric_tree(["4", "3", "4"]) # false
p symmetric_tree(["10", "2", "2", "#", "1", "1", "#"]) # true
puts


# Alternate solution
def symmetric_tree(arr)
  n = 1
  until arr.empty?
    row = arr.slice!(0, n)
    return false unless row == row.reverse
    n *= 2
  end
  true
end

p symmetric_tree(["1", "2", "2", "3", "#", "#", "3"]) # 'true'
p symmetric_tree(["4", "3", "4"]) # false
p symmetric_tree(["10", "2", "2", "#", "1", "1", "#"]) # true
