echo $1 | tr ' ' '\n' | tac | tr '\n' ' '

result=
for word in $1; do
  result="$word $result"
done
echo $result
