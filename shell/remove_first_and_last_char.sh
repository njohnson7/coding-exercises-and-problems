# sed 's/^.\|.$//g' <<< 'abcabc'

echo $1 | sed 's/^.\|.$//g'
