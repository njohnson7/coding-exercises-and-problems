#!/bin/bash

# usage: $ ./multiply 2 3 4

echo $1*$2*$3 | bc

# or

bc <<< "$1 * $2 * $3"
