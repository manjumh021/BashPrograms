#!/bin/bash

# Show sum of three numbers zero or not

read -r -p "Enter 3 numbers to check sum of those is equals or not: " a b c
if (($a+$b+$c==0))
then
    echo "Sum is zero"
else
    echo "Sum = $(($a+$b+$c)) is not equal to zero"
fi