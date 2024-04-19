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

dnf install mysql -y
VALIDATE $? "install mysql"