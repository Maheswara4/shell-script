#!/bin/bash

userid=$(id -u)

VALIDATE(){
if [ $1 -eq 0]
then
    echo "$2 ...failure"
    exit 1
else
    echo "$2 ...success"
fi
}

if [ $userid -eq 0 ]
then
    echo "please the run script with root access"
    exit 1
else
    echo "you are super user"
fi


dnf install mysql -y
VALIDATE $? "install MYSQL"