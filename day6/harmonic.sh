#!/bin/bash -x

# Write a program that takes a command-line argument n and prints the nth harmonic
# number. Harmonic Number is of the form

read -r -p "Enter nth harmonic number: " n

result=0
for ((i=1;i<=$n;i++))
do
    temp=$(echo 1 $i | awk '{ printf "%f", $1 / $2 }')
    result=$(echo $result $temp | awk '{ printf "%f", $1 + $2 }')
done
echo "Result: $result"

