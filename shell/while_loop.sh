#!/bin/bash

countToTwenty() {
  i="1"
  while [ $i -lt 21 ]; do
    echo "Count: $i"
    # i=$[$i+1]
  done
}

countToTwenty() {
  echo "Count: "{1..20}
}

countToTwenty() {
  for i in $(seq 1 20); do echo "Count: $i"; done
}

countToTwenty() {
  i=1
  while [ $i -le 20 ]
  do
    echo Count: $i
    let i++
  done
}

countToTwenty
