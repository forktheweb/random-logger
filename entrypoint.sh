#!/bin/sh
while [ 1 ]
do
   UUID=$(cat /proc/sys/kernel/random/uuid)
   waitTime=0
   sleep $waitTime &
   wait $!
   instruction=$(shuf -i 0-4 -n 1)
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo "$d ERROR something happened in this execution. $UUID"
      ;;
      "2") echo "$d INFO takes the value and converts it to string. $UUID"
      ;;
      "3") echo "$d WARN variable not in use. $UUID"
      ;;
      "4") echo "$d DEBUG first loop completed. $UUID"
      ;;
   esac
done
