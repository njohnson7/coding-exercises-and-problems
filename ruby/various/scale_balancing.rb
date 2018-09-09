# scale_balancing.rb

# Using the Ruby language, have the function ScaleBalancing(strArr) read strArr
# which will contain two elements, the first being the two positive integer
# weights on a balance scale (left and right sides) and the second element being
# a list of available weights as positive integers. Your goal is to determine if
# you can balance the scale by using the least amount of weights from the list,
# but using at most only 2 weights. For example: if strArr is ["[5, 9]", "[1, 2,
# 6, 7]"] then this means there is a balance scale with a weight of 5 on the
# left side and 9 on the right side. It is in fact possible to balance this
# scale by adding a 6 to the left side from the list of weights and adding a 2
# to the right side. Both scales will now equal 11 and they are perfectly
# balanced. Your program should return a common separated string of the weights
# that were used from the list in ascending order, so for this example your
# program should return the string 2,6

# There will only ever be one unique solution and the list of available weights
# will not be empty. It is also possible to add two weights to only one side of
# the scale to balance it. If it is not possible to balance the scale then your
# program should return the string not possible.

def scale_balancing(arr)
  light, heavy = arr.first.scan(/\d+/).map(&:to_i).sort
  weights = arr.last.scan(/\d+/).map(&:to_i)
  weights.each_with_index do |weight, idx|
    if light + weight == heavy
      return weight.to_s
    elsif light + weight < heavy
      break if idx == weights.size - 1
      remaining = weights[0...idx] + weights[(idx + 1)..-1]
      remaining.each_with_index do |weight2, idx2|
        if light + weight + weight2 == heavy
          if idx <= idx2
            return [weight, weight2].join(',')
          else
            return [weight2, weight].join(',')
          end
        end
      end
    elsif light + weight > heavy
      break if idx == weights.size - 1
      remaining = weights[0...idx] + weights[(idx + 1)..-1]
      remaining.each_with_index do |weight2, idx2|
        if light + weight == heavy + weight2
          if idx <= idx2
            return [weight, weight2].join(',')
          else
            return [weight2, weight].join(',')
          end
        end
      end
    end
  end
  'not possible'
end

p scale_balancing(["[5, 9]", "[1, 2, 6, 7]"]) # '2,6'
p scale_balancing(["[3, 4]", "[1, 2, 7, 7]"]) # '1'
p scale_balancing(["[13, 4]", "[1, 2, 3, 6, 14]"]) # '3,6'
p scale_balancing(["[12, 5]", "[1, 2, 3]"]) # 'not possible'
p scale_balancing(["[6, 2]", "[1, 10, 6, 5]"]) # 1,5    FIX!!!!!!!
p scale_balancing(["[6, 1]", "[1, 10, 6, 5]"]) # 5      FIX!!!!!!!
