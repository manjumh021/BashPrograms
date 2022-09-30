#!/bin/bash -x

# Write a program that takes day and month from the command line and prints true if
# day of month is between March 20 and June 20, false otherwise.

echo "Enter the date and it should be in between March 20 and June 20"
read -p "Enter day: " day
read -p "Enter month: " month

validate_date()
{
    if (($day >= $1 && $day <= $2)) 
    then
        return 1
    else
        return 0
    fi
}

case $month in
    3 )
    validate_date 20 31 ;;
    4 )
    validate_date 1 31  ;;
    5 )
    validate_date 1 30  ;;
    6 )
    validate_date 1 20  ;;
    * )
    echo "Month should be 3 to 6 range."
    exit
    ;;
esac

valid_date=$?

if (( $valid_date ))
then
    echo "$day/$month is valid"
else
    echo "$day/$month is not valid"
fi