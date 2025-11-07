#!/bin/bash
for i in $(ls $1)
do
  var=0
  k=0
  for file in $(cat $1$i)
  do
   age=$(echo $file | cut -d ":" -f2)
   if [[$age -lt 18]]
   then
       var=$(($var + 1))
   elif [[$age -ge 18]]
   then
       k=$(($k + 1))
   fi
  done
  echo -e "Несовершенолетние: $var, Совершенолетние: $k"
done
