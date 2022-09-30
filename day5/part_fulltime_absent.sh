#!/bin/bash -x

isFullTime=2
isPartTime=1
empRatePerHr=20
randomCheck=$((RANDOM%3))

if [ $isFullTime == $randomCheck ]
then
	empHrs=8
elif [ $isPartTime == $randomCheck ]
then
	empHrs=4
else
    empHrs=0
fi
salary=$(($empRatePerHr*$empHrs))
echo $salary