#!/bin/bash

echo "Please insert the Key: "
read password

# You can change Y and X value to increase or decrease processing time/difficulty to break the password via bruteforce
x=101
y=13

newround=$(echo $password | sha256sum)
count=0
while [ $count -lt $(( x )) ]
do

newround+=$(echo $newround | sha256sum)
if [ $count -lt $y ]
then
newround+=$newround
fi
echo -e "Round number $count"
#echo $newround
count=`expr $count + 1`
done

final=$(echo $newround | sha256sum)

echo -e "\nStrenghtened key is:\n $final\n"

