#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]; then 
    echo "ERROR: please run this command with sudo privileges"
    exit 1

fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR: mysql installed is failed"
    exit 1
else
    echo "mysql installed successfully"

fi
