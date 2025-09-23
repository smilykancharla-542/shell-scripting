#!/bin/bash

echo "enter a value"
read numb



if [ $(($numb % 2)) -eq 0 ]; then
    echo "given number is even"
else
    echo "given number is odd"
fi