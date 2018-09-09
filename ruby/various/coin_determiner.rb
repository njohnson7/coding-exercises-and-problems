# coin_determiner.rb

# Using the Ruby language, have the function CoinDeterminer(num) take the input,
# which will be an integer ranging from 1 to 250, and return an integer output
# that will specify the least number of coins, that when added, equal the input
# integer. Coins are based on a system as follows: there are coins representing
# the integers 1, 5, 7, 9, and 11. So for example: if num is 16, then the output
# should be 2 because you can achieve the number 16 with the coins 9 and 7. If
# num is 25, then the output should be 3 because you can achieve 25 with either
# 11, 9, and 5 coins or with 9, 9, and 7 coins.

def coin_determiner(num)
  coins = [1, 5, 7, 9, 11]
  times = 1
  while true
    sums = coins.repeated_combination(times).map { |nums| nums.reduce(:+) }.uniq
    return times if sums.include?(num)
    times += 1
  end
end

p coin_determiner(16) # 2
p coin_determiner(25) # 3
p coin_determiner(6) # 2
p coin_determiner(16) # 2
p coin_determiner(2) # 2
p coin_determiner(4) # 4
p coin_determiner(34) # 4
p coin_determiner(37) # 5
p coin_determiner(100) # 10
p coin_determiner(250) # 24
