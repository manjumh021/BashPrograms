#!/bin/bash

# Write a program in the following steps
# a. Roll a die and find the number between 1 to 6
# b. Repeat the Die roll and find the result each time
# c. Store the result in a dictionary
# d. Repeat till any one of the number has reached 10 times
# e. Find the number that reached maximum times and the one that was for minimum times

# assigning Values
game_not_end=1
idx=1
min=10
for ((i=1;i<=6;i++))
do
    track[$i]=0
done

while (($game_not_end))
do
    # generating random number
    random_no=$(($RANDOM%6+1))
    dice_vlues[$idx]=$random_no
    echo "Rolled dice values: ${dice_vlues[*]}"
    ((idx++))

    # checking and storing rolled value
    case $random_no in
        1 ) track[1]=$(echo ${track[1]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
        2 ) track[2]=$(echo ${track[2]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
        3 ) track[3]=$(echo ${track[3]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
        4 ) track[4]=$(echo ${track[4]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
        5 ) track[5]=$(echo ${track[5]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
        6 ) track[6]=$(echo ${track[6]} 1 | awk '{ printf "%i", $1 + $2 }') ;;
    esac
    echo ${track[*]}

    # checking any rolled value reached 10
    for ((i=1;i<=6;i++))
    do
        if ((track[$i]==10))
        then
            max_key=$i
            game_not_end=0
        fi
    done
done

# checking minmum rolled value
for ((j=1;j<=6;j++))
do
    if ((track[$j]<$min))
    then
        min=${track[$j]}
        min_key=$j
    fi
done

#Print Results
echo "Rolled times: ${#dice_vlues[*]}"
echo "$max_key reached 10 times"
echo "minimum rolled number is $min_key and rolled only $min times"
