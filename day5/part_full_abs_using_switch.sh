#!/bin/bash -x

isFullTime=2
isPartTime=1
empRatePerHr=20
randomCheck=$((RANDOM%3))


case $randomCheck in
                $isFullTime )
                        echo "Black tea"
                ;;
                $isPartTime )
                        echo "Black coffee"
                ;;
                "tea" )
                        echo "Tea"
                ;;
                *)
                        echo "no pattern matching"
                ;;
esac