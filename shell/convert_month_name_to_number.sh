#!/bin/bash

month="$1"
case "$(echo $month | tr '[A-Z]' '[a-z]')" in
  jan*) echo '01' ;;
  feb*) echo '02' ;;
  mar*) echo '03' ;;
  apr*) echo '04' ;;
  may*) echo '05' ;;
  jun*) echo '06' ;;
  jul*) echo '07' ;;
  aug*) echo '08' ;;
  sep*) echo '09' ;;
  oct*) echo '10' ;;
  nov*) echo '11' ;;
  dec*) echo '12' ;;
esac


# TODO: look up how this works!
date -d "${1,,} 1" +%m

