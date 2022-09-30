#!/bin/bash 

# Unit Conversion

# a. 1ft = 12 in then 42 in = ? ft
# b. Rectangular Plot of 60 feet x 40 feet in meters
# c. Calculate area of 25 such plots in acres


#case 1
# read -r -p "please enter the total inches: " total_inches
total_inches=42
foot=12
feet=$(($total_inches/$foot))
remain_inches=$(($total_inches%$foot))
echo "for $total_inches total inches : $feet feet $remain_inches inches"

#case 2
# read -r -p "please enter width of rectangle: " width
# read -r -p "please enter length of rectangle: " length
width=60
length=40
conv_unit=0.0929
area_ft=`echo "$width $length" | awk '{area=$1*$2; printf area}'`
area_mtr=$(echo $area_ft $conv_unit | awk '{ printf "%f", $1 * $2 }')
echo "Area of the rectangle in square feet is: $area_ft"
echo "Area of the rectangle in square meter is: $area_mtr "

#case 3
acre=$(echo $area_ft 43560 | awk '{ printf "%f", $1 / $2 }')
echo "Area of the 25 such plots in acre is: $acre"
