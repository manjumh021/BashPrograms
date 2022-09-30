#!/bin/bash

function my_func()
{
    result=$(($num1*$num2))
    echo $result
}
echo "Enter 2 number: "
read num1 num2
my_func $num1 $num2
echo "Output is $result"
