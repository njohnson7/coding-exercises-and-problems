a=TheWindFromTheWindowisSoBitterICouldntPutMyFannyPackOn
b=Bitter
c=Good

echo $a
echo $b
echo $c
# echo [ ((echo $a | grep $b | wc -c)) ] -eq 0

[[ $a =~ $c ]] && echo 'Soup is Bad!' || echo 'Soup is Good!'

if echo $a | grep $b
then
  echo 'Soup is Bad!'
else
  echo 'Soup is Good!'
fi

if echo $a | grep $c
then
  echo 'Soup is Bad!'
else
  echo 'Soup is Good!'
fi
