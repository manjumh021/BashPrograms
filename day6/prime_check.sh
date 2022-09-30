#!/bin/bash

# Write a program that takes a input and determines if the number is a prime.
#------------------------------------------------------------------------------------
read -r -p "Enter the number: " n

for ((i=2;i<$n;i++))
do
    if [[ $(($n%$i)) -eq 0 ]]
    then
        echo "$n is not prime"
        exit
    fi
done
echo "$n is prime"

#===================================================================================

# Extend the program to take a range of number as input and output the Prime
# Numbers in that range.
#-----------------------------------------------------------------------------------
read -r -p "Enter the lower limit: " lower
read -r -p "Enter the upper limit: " upper

for ((num=$lower;num<=$upper;num++))
do
    is_prime=1
    for ((i=2;i<$num;i++))
    do
        if [[ $(($num%$i)) -eq 0 ]]
        then
            is_prime=0
            break
        fi
    done
    if [[ $is_prime -eq 1 ]]
    then
        echo $num
    fi
done