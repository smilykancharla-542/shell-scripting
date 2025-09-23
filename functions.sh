#!/bin/bash

user=$(id -u)

if [ $user -ne 0 ];then
    echo "error:please run command with sudo previlleges"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
        echo " error: $2 is failed"
        exit 1
    else 
        echo "$2 is success"
    fi

}
dnf install mysql -y
validate $? "MYSQL"

dnf install nginx -y
validate $? "nginx"
