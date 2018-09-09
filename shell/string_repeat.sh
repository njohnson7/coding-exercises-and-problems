str='foo'
n=5

# printf 'string%.0s' {1..$n}

echo $(for i in $(seq 1 $n); do printf $str; done)

echo $(printf "%.s$2" $(seq $1))
# AA
