#!/bin/bash

# 1. Use Random Function (( RANDOM )) to get Single Digit
# 2. Use Random to get Dice Number between 1 to 6
# 3. Add two Random Dice Number and Print the Result

echo $(($RANDOM%9+1))
echo $(($RANDOM%6+1))
echo $(($(($RANDOM%6+1))+$(($RANDOM%6+1))))