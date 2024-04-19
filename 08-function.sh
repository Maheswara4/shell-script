#!/bin/bash

userid=$(id -u)

VALIDATE(){
if [$1 -eq 0]
then
    echo "$2 install failure"
    exit 1
else
    echo "$2 install success"
fi
}
if [$user -eq 0]
then
    echo "please the run script with root access"
    exit 1
else
    echo "you are super user"
fi


dnf install mysql -y
VALIDATE $? "install mysql"