#!/bin/bash

# Write a program that does the following
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.




get_list_of_random_no()
{
    for num in {0..9}
    do
        random_no_list[$num]=$(($RANDOM%900+100))
    done
    echo ${random_no_list[@]}
}


get_sec_largest_from_list()
{
    for num in ${random_no_list[@]}
    do
        if (($num > $largest ))
        then
            largest=$num
        fi
    done

    for num in ${random_no_list[@]}
    do
        if (($num < $largest && $num > $second_largest ))
        then
            second_largest=$num
        fi
    done
}

get_sec_lowest_from_list()
{
    for num in ${random_no_list[@]}
    do
        if (($num < $lowest ))
        then
            lowest=$num
        fi
    done

    for num in ${random_no_list[@]}
    do
        if (($num > $lowest && $num < $second_lowest ))
        then
            second_lowest=$num
        fi
    done
}



largest=1
second_largest=1
lowest=1000
second_lowest=1000

get_list_of_random_no
get_sec_largest_from_list
get_sec_lowest_from_list


echo Largest number: $largest
echo Second largest umber: $second_largest
echo Lowest number: $lowest
echo Second largest number: $second_lowest




# Extend the above program to sort the array and then find the 2nd largest
# and the 2nd smallest element.

sorted_array=$(printf '%s\n' "${random_no_list[@]}" | sort)
echo Sorted array: $sorted_array
printf '%s\n' "${random_no_list[@]}" | sort -n | tail -2 | head -1
printf '%s\n' "${random_no_list[@]}" | sort -n | head -2 | tail -1