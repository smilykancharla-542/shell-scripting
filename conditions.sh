#!/bin/bash

number=$1
if [ $number -lt 10 ]; then
    echo "given number is less than 10:$number"
elif [ $number -eq 10 ]; then
    echo " given number is equal to 10"
else
    echo "given number is greater than 10:$number"

fi