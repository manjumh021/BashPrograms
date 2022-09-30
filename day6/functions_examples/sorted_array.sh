#!/bin/bash

# Extend the above program to sort the array and then find the 2nd largest
# and the 2nd smallest element.


get_min_max_no_from_list()
{
    echo hi ...
    largest=${$1[0]}
    lowest=${$1[0]}
    for num in ${$1[@]}
    do
        if (($num > $largest ))
        then
            largest=$num
        fi
    done
    for num in ${$1[@]}
    do
        if (($num < $lowest ))
        then
            lowest=$num
        fi
    done
}

get_list_of_random_no()
{
    for num in {0..9}
    do
        random_no_list[$num]=$(($RANDOM%900+100))
    done
    echo ${random_no_list[@]}
}

unsorted_array=$(get_list_of_random_no)
echo $unsorted_array
echo ${#unsorted_array[@]}

for((i=0; i < ${#unsorted_array[@]}; i++))
do
    sliced_list=${random_no_list[@]:$i}
    get_min_max_no_from_list $sliced_list
    echo ${random_no_list[@]:$i}
    sorted_array[$i]=$lowest
done
echo ${sorted_array[@]}