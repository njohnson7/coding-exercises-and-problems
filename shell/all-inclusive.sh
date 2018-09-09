#!/bin/bash
# string rotation and arrays

rotate() {
  local str=$1
  echo "${str:1}${str:0:1}"
}

containAllRots() {
  local str=$1
  local words=$2
  local len=${#str}
  local match=true

  for ((i = 0; i < len; i++)); do
    local regex=\\b$str\\b
    if [[ ! "$words" =~ $regex ]]; then
      match=false
      break
    fi
    str=$(rotate $str)
  done
  
  echo $match
}

containAllRots "abcd" "abcd bcda cdab dabc"                                                       # true
containAllRots "abcd" "abcd bcda cdab xyzz dabc"                                                  # true
containAllRots "abcd" "abcd bcda cdab"                                                            # false
containAllRots '' ''                                                                              # true
containAllRots "bsjq" "bsjq qbsj sjqb twZNsslC jqbs"                                              # true
containAllRots "XjYABhR" "TzYxlgfnhf yqVAuoLjMLy BhRXjYA YABhRXj hRXjYAB jYABhRX XjYABhR ABhRXjY" # false
