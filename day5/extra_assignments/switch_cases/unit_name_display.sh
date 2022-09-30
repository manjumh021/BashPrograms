#!/bin/bash

read -r -p "please enter 10 multiple number  : " digit

case $digit in
                1 )
                        echo "Unit"
                ;;
                10 )
                        echo "Ten"
                ;;
                100 )
                        echo "Hundred"
                ;;
                1000 )
                        echo "Thousand"
                ;;
                10000 )
                        echo "Ten thousand"
                ;;
                * )
                        echo "no pattern matching"
                ;;
esac