#!/bin/bash

for (( i=$1; i<=$3; i=i+1 )); do
  (( ((i % $1)) == 0 && ((i % $2)) == 0 )) && echo $i
done

i=$(($1*$2))
seq $i $i $3
