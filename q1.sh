#!/bin/bash  
filename=$1
value=$(<$filename) 
line1=$(egrep -c ^ $filename)
nt=$(expr $line1 / 2)
if [ $(expr $line1 % 2) -eq 0 ]
then
	n=$nt
else
	n=$(expr $nt + 1)	    
fi
FILE="$1"
LINE_NO=$n
i=0
while read line; do
  i=$(( i + 1 ))
  test $i = $LINE_NO && echo "$line";
done <"$FILE"
