#!/bin/bash

# Write a program that reads 5 Random 3 Digit values and then outputs the minimum
# and the maximum value


sum=0
for number in {1..5}
do
	random_number=$(($RANDOM%900+100))
	sum=`expr $sum + $random_number`
	echo $random_number
done

echo "Sum= $sum"
average=$(($sum/5))
echo "Average= $average"