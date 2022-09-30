#!/bin/bash
echo "Feet to Inch : 1"
echo "Feet to Meter: 2"
echo "Inch to Feet : 3"
echo "Meter to Feet: 4"

read -r -p "please enter choice  : " digit

case $digit in
                1 )
                    read -r -p "please enter feet  : " feet
                    inch=$(echo $feet 12 | awk '{ printf "%f", $1 * $2 }')
                    echo "$feet feet = $inch inches"
                ;;
                2 )
                    read -r -p "please enter feet  : " feet
                    meter=$(echo $feet 0.3048 | awk '{ printf "%f", $1 * $2 }')
                    echo "$feet feet = $meter meters"
                ;;
                3 )
                    read -r -p "please enter inches  : " total_inches
                    foot=12
                    feet=$(($total_inches/$foot))
                    remain_inches=$(($total_inches%$foot))
                    echo "$total_inches inches = $feet feet $remain_inches inches"
                ;;
                4 )
                    read -r -p "please enter meters  : " meter
                    feet=$(echo $meter 3.28084 | awk '{ printf "%f", $1 * $2 }')
                    echo "$meter meters = $feet feet"
                ;;
                * )
                        echo "no pattern matching"
                ;;
esac