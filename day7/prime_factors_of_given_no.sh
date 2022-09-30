#!/bin/bash

# Program to print prime numbers upto nth number

read -r -p "Enter the nth number to print prime numbers: " number

idx=0
prime_check()
{
    lower=2
    for ((num=$lower;num<=$number;num++))
    do
        is_prime=1
        for ((i=2;i<$num;i++))
        do
            if [[ $(($num%$i)) -eq 0 ]]
            then
                is_prime=0
                break
            fi
        done
        if [[ $is_prime -eq 1 ]]
        then
            prime_num_list[$idx]=$num
            ((idx++))
        fi
    done
}

prime_check
echo "Prime Numbers List: ${prime_num_list[@]}"

#=========================================================================

# Program to print prime factors of nth number

# Extend the Prime Factorization Program to store all the Prime Factors of a
# number n into an array and finally display the output.

idx=0
prime_factors[0]=1
for num in ${prime_num_list[@]} 
do
    while (($number%$num==0))
    do
        if ((number!=0))
        then
            number=$number/$num
            prime_factors[$idx]=$num
            ((idx++))
        else
            break
        fi
    done
done

echo "Prime Factors List: ${prime_factors[@]}" 
