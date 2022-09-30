#!/bin/bash -x

isPresent=1
randomCheck=$((RANDOM%2))

if [ $isPresent == $randomCheck ]
then
    empRatePerHr=20
	empHrs=8
	salary=$(($empRatePerHr*$empHrs))
	echo $salary
else
	salary=0
	echo "employee is absent and salary is $salary"
fi
