#!/bin/bash
read -p "Enter a: " a
read -p "Enter b: " b
read -p "Enter c: " c

result1=$(($a+$b*$c))
result2=$(($a%$b+$c))
result3=$(($c+$a/$b))
result4=$(($a*$b+$c))
echo "$a + $b * $c = $result1"
echo "$a % $b + $c = $result2"
echo "$c + $a / $b = $result3"
echo "$a * $b + $c = $result4"
max=$result1
min=$result1
for num1 in $result1 $result2 $result3 $result4
do
    if (($num1 > $max ))
    then
        max=$num1
    elif (($num1 < $min ))
    then
        min=$num1
    fi
done
echo "maximum = $max minmimum = $min"

