#!/bin/bash
echo "Enter two numbers"
read a
read b

if [ $a -eq $b ]
then
	echo "$a is equal to $b"
elif [ $a -gt $b ]
then
        echo "$a is greater than $b"
elif [ $a -lt $b ]
then
        echo "$a is lesser than $b"
else
	echo "None of the conditions are correct"
fi
