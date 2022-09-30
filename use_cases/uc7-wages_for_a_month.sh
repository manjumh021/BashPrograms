#!/bin/bash

isPartTime=1
isFullTime=2
empRatePerHr=20
numOfWorkingDays=20

totalSalary=0
totalHrs=0

for ((day=1;day<=$numOfWorkingDays;day++))
do
    randomCheck=$(($RANDOM%3))
    case $randomCheck in
        $isPartTime )
            empHrs=4
        ;;
        $isFullTime )
            empHrs=8
        ;;
        * )
            empHrs=0
        ;;
    esac
    totalHrs=$(($totalHrs+$empHrs))
    salary=$(($empHrs*$empRatePerHr)) # day salary
    totalSalary=$(($totalSalary+$salary))
done

echo "Total Hours worked: $totalHrs"
echo "Total salary: $totalSalary"
