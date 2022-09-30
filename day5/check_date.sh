#!/bin/bash

# Write a program that takes day and month from the command line and prints true if
# day of month is between March 20 and June 20, false otherwise.

echo "Enter the date and it should be in between March 20 and June 20"
read -p "Enter day: " day
read -p "Enter month: " month

if (($month==3)) 
then
    if (($day >= 20 && $day <= 31)) 
    then
        echo "$day/$month is valid"
    else
        echo "$day/$month is not valid"
    fi
elif (($month==4)) 
then
    if (($day >= 1 && $day <= 30)) 
    then
        echo "$day/$month is valid"
    else
        echo "$day/$month is not valid"
    fi
elif (($month==5)) 
then
    if (($day >= 1 && $day <= 31)) 
    then
        echo "$day/$month is valid"
    else
        echo "$day/$month is not valid"
    fi
elif (($month==6)) 
then
    if (($day >= 1 && $day <= 20)) 
    then
        echo "$day/$month is valid"
    else
        echo "$day/$month is not valid"
    fi
else
    echo "$day/$month is not valid"
fi