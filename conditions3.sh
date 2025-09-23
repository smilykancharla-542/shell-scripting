#!/bin/bash

read numb

if [ $(($number % 2)) -eq 0 ]; then
    echo "given number is even"
else
    echo "given number is odd"
fi