#!/bin/bash

# Write a program that takes a command-line argument n and prints a
# table of the powers of 2 that are less than or equal to 2^n till 256 is
# reached..

read -r -p "Enter two to power of (2^n) number n: " n

boundary=256
i=1
ii=1

while [[ $ii -lt $boundary && $i -le $n ]]
do
    ii=$((`expr "$ii" \* "2" `))
    echo "2^$i = $ii"
    ((i++))
done