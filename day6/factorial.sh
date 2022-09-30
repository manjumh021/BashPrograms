#!/bin/bash

# Write a program that computes a factorial of a number taken as input.
# 5 Factorial – 5! = 1 * 2 * 3 * 4 * 5

#------------------------------------------------------------------------------------
read -r -p "Enter the factorial number: " n

result=1
for ((i=1;i<=n;i++))
do
    result=$(($result*$i))
done
echo "Factorial of $n: $result"