a=1
b=2
echo $a

# echo $(( $a % 2))

# if (( $a % $a == 0 && $a && $a == 0 )); then
#   echo true;
# else
#   echo false;
# fi

# $(( $b % 2 == 0 )) && echo even || echo odd
# $(( $b % 2 == 0 )) && echo even || echo odd

[ $((a%2)) -eq 0 ] && echo even || echo odd
[ $((b%2)) -eq 0 ] && echo even || echo odd

[ $(($1 % 2)) -eq 0 ] && echo even || echo odd

