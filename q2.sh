#!/bin/bash  
cat /etc/shells | awk '/\/usr\// {print $1}' > file.txt

value=$(<file.txt)
#echo $value

#awk '{print $1,$2,$3}' file.txt
awk 'BEGIN{FS="/";} {print $4}' file.txt

