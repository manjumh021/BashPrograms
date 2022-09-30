#!/bin/bash


# Take a number from user and check if the number is a Prime then show

# that its palindrome is also prime
# a. Write function check if number is Prime
# b. Write function to get the Palindrome
# c. Check if the Palindrome number is also prime

function prime_check()
{
    prime=1
    for ((i=2;i<$1;i++))
    do
        if [[ $(($1%$i)) -eq 0 ]]
        then
            prime=0
            break
        fi
    done
    if (($prime ==1))
    # if ((prime ==1))
    # if [[ $prime -eq 1 ]]
    then
        return 1
    else
        return 0
    fi
}

function polyndrome_check()
{
    temp1=$1
    for i in $temp1
    do
        while [ "$i" -gt 0 ]
        do
            rem=$((i%10))
            rev=$((rev*10+rem))
            i=$((i / 10))
        done
    done
    if [[ $rev -eq $1 ]]
    then
        return 1
    else
        return 0
    fi
}

read -r -p "Enter the number: " n

prime_check "$n" 
is_prime=$?

polyndrome_check $n
is_polyndrome=$?

if (($is_prime && $is_polyndrome))
then
    echo "$n is prime as well as polyndrome"
elif (($is_prime))
then
    echo "$n is prime only"
elif (($is_polyndrome))
then
    echo "$n is polyndrome only"
else
    echo "$n is neither polyndrome nor prime."
fi
