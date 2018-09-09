#!/bin/bash
echo $1 | tr -d ' '

echo ${1// /}

tr -d ' ' <<< $1
