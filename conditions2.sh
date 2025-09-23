#!/bin/bash

a=$1

if [ $a -lt 10 ]; then  
    echo "given number is leass than 10"
elif [ $a -gt 10 ]; then
    echo "given number is greater than 10 "
else
    echo "qual to 10"
fi