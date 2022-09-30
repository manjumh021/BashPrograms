#!/bin/bash


# Help user find degF or degC based on their Conversion Selection. Use
# Case Statement and ensure that the inputs are within the Freezing Point (
# 0 °C / 32 °F ) and the Boiling Point of Water ( 100 °C / 212 °F )
# a. degF = (degC * 9/5) + 32
# b. degC = (degF – 32) * 5/9

echo -e "\nCelsius to Fahrenheit: 1"
echo -e "Fahrenheit to Celsius: 2\n"
read -r -p "Choose the option: " choice



degC_to_degF()
{
    read -r -p "Enter the degree Celsius: " degC
    if (( $degC>=0 && $degC<=100 ))
    then
        temp1=$(echo 9 5 | awk '{ printf "%f", $1 / $2 }')
        temp2=$(echo $degC $temp1 | awk '{ printf "%f", $1 * $2 }')
        degF=$(echo $temp2 32 | awk '{ printf "%f", $1 + $2 }')
        echo "$degC degree Celsius = $degF Fahrenheit"
    else
        echo "Entered value should be 0 deg to 100 deg range."
    fi

}

degF_to_degC()
{
    read -r -p "Enter the degree Fahrenheit: " degF
    if (( $degF>=32 && degF<=212))
    then
        temp1=$(echo $degF 32 | awk '{ printf "%f", $1 - $2 }')
        temp2=$(echo 5 9 | awk '{ printf "%f", $1 / $2 }')
        degC=$(echo $temp1 $temp2 | awk '{ printf "%f", $1 * $2 }')
        echo "$degF degree Fahrenheit = $degC degree Celsius"
    else
        echo "Entered value should be 32 deg and 212 deg range."
    fi
}

case $choice in
    1 )
        degC_to_degF
    ;;
    2 )
        degF_to_degC
    ;;
    * )
        echo -e "\nWrong Choice..."
    ;;
esac