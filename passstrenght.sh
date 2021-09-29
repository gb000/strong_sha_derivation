#!/bin/bash


# Change the password here
password=segredo123

######echo $password | sha256sum > file

# You can change Y and X value to increase or decrease processing time/difficulty to break the password via bruteforce
x=10
y=3

newround=$(echo $password | sha256sum)
count=0
while [ $count -lt $(( x ** y )) ]
do

newround+=$(echo $newround | sha256sum)
echo -e "\n\n\n$newround"
count=`expr $count + 1`
done

final=$(echo $newround | sha256sum)

echo -e "\nFinal is:\n $final\n"

