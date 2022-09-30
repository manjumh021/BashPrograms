#!/bin/bash

# Take a range from 0 – 100, find the digits that are repeated twice like 33, 77,
# etc and store them in an array

read -r -p "Enter the number below 100: " number

if ((100>=$number))
then
    for ((i=1;i<$number;i++))
    do
        multiple_of_11=$(($i*11))
        if (($multiple_of_11<$number))
        then
            list_of[$i]=$multiple_of_11
        fi
    done
else
    echo "please enter below 100"
    exit
fi
echo ${list_of[@]}