#!/bin/bash

# 36 7 => 22 
# 58 29

# 55 30 => 5

# while son age > 0
  # if sons age * 2 == fathers age, return i
  # decrement son and fathers age

# if sons age * 2 < fathers age, increment ages
# else, decrement ages

# while sons age * 2 != fathers age
  # increment both ages by 1
  # keep track of total times incremented (i)
# return i

d=36
s=7 # 22

# d=55
# s=30 # 5

# d=42
# s=21 # 0

if [ $((s * 2)) -le $d ]; then
  n=1
else
  n=-1
fi

i=0
while [ $((s * 2)) -ne $d ]; do
  s=$((s + n))
  d=$((d + n))
  i=$((i + n))
done

echo $((i * n))


# or:
echo $((2 * s - d)) | tr -d -
