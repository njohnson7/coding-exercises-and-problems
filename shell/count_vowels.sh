echo $1 | grep -io "[aeiou]" | wc -l

echo $1 | tr -dc aeiouAEIOU | wc -c
