#!/bin/bash
read -p "Enter a sigle digit number: " number

if (($number==0))
then
    echo Zero
elif(($number==1))
then
    echo One
elif(($number==2))
then
    echo Two
elif(($number==3))
then
    echo Three
elif(($number==4))
then
    echo Four
elif(($number==5))
then
    echo Five
elif(($number==6))
then
    echo Six
elif(($number==7))
then
    echo Seven
elif(($number==8))
then
    echo Eight
elif(($number==9))
then
    echo Nine
else
    echo "$number is not single digit number"

fi
