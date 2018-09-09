#!/bin/bash

# f='tags'
# echo $(find $f)

if [ $# -eq 0 ]; then
  echo "Nothing to find"
elif [ $(find $1) ]; then
  echo "Found $1"
else
  echo "Can't find $1"
fi
