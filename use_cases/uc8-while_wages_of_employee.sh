#!/bin/bash -x

isPartTime=1
isFullTime=2
empRatePerHr=20
maxRateInMonth=100
numOfWorkingDays=20

totalSalary=0
totalEmpHr=0
totalWorkingDays=0

while [[ $totalEmpHr -lt $maxRateInMonth && 
        $totalWorkingDays -lt $numOfWorkingDays ]]
    do
    randomCheck=$(($RANDOM%3))
    ((totalWorkingDays++))
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
    totalEmpHr=$(($totalEmpHr+$empHrs))
    totalSalary=$(($totalSalary+$empHrs*$empRatePerHr))
    done
echo "Days worked: $totalWorkingDays"
echo "Total Hours worked: $totalEmpHr"
echo "Total salary: $totalSalary"
