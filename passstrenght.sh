#!/bin/bash

touch file

# Change the password here
password=secret

echo $password | sha256sum > file

# You can change Y and X value to increase or decrease processing time/diffuculty to bread the password via bruteforce
x=10
y=2

count=0
while [ $count -lt $(( x ** y )) ]
do

newround=$(cat file)
echo $newround | sha256sum >> file

count=`expr $count + 1`
done

echo "Final is " $final_round | sha256sum file
