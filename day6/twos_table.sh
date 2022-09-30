#!/bin/bash

#Print two's table

read -r -p "Enter number n: " n

i=1
boundary=256
ii=`expr "2" \* "$i" `
while [[ $ii -le $boundary && $i -le $n ]]
do
    echo "2^$i = $((`expr "2" \* "$i" `))"
    ((i++))
done
