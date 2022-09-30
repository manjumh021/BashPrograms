#!/bin/bash

#Print 5 random two digits number and also print min and max between them.

min=$(($RANDOM%90+10))
max=$min
echo $min
for number in {1..4}
do
	random_numebr=$(($RANDOM%90+10))
	echo $random_numebr
	if (($min < $random_numebr)) 
	then
		min=$min
    else
        min=$random_numebr
    fi
	if (($max > $random_numebr))
	then
		max=$max
    else
        max=$random_numebr
	fi
done

echo "Minimum= $min"
echo "Maximum= $max"