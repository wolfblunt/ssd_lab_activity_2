#!/bin/bash  
cat /etc/shells | awk '/\/usr\// {print $1}' > file.txt

value=$(<file.txt)

awk 'BEGIN{FS="/";} {print $4}' file.txt

