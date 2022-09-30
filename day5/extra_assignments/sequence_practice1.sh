#!/bin/bash -x

echo "Random single digit number: $(($RANDOM%10))"
echo "Random Dice number: $(($RANDOM%6+1))"
echo "Sum of two random dice number: $(($(($RANDOM%6+1))+$(($RANDOM%6+1))))"