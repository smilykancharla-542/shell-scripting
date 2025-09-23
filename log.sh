#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOG_FOLDER="/var/log/shell-scripting"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOG_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOG_FOLDER

echo "script started time is: $(date)"

user=$(id -u)

if [ $user -ne 0 ];then
    echo -e "$R error:please run command with sudo previlleges $N"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]; then
        echo -e " Error: $2 installing is $R failed $N"
        exit 1
    else 
        echo  -e "$2 installation is $G successfully completed $N"
    fi  

}
dnf list installed mysql &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    validate $? "MYSQL"
else
    echo -e " $Y skipped: mysql is already installed $N"
fi


dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    validate $? "nginx"
else
    echo -e " $Y skipped: nginx is already installed $N"
fi
