#!/bin/bash

# Find the Magic Number

# a. Ask the user to think of a number n between 1 to 100
# b. Then check with the user if the number is less then n/2 or greater
# c. Repeat till the Magic Number is reached..


echo "Welcome to number guessing game."
attempts=10
comp_guess=$(($RANDOM%100+1))
user_guess=111
echo $comp_guess

while [[ $attempts -ne 0 && $user_guess -ne $comp_guess ]]
do
    read -r -p "Guess the Number betwwen 1 to 100: " user_guess
    if (($user_guess < $comp_guess))
    then
        ((attempts--))
        echo "Lower guess"
        echo -e "attempts left: $attempts\n"
    elif (($user_guess > $comp_guess))
    then
        ((attempts--))
        echo "Higher guess"
        echo -e "attempts left: $attempts\n"
    else
        echo "Correct guess. Congratulations....!"
        exit
    fi
done