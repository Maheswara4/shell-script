#!/bin/bash

userid=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 |cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

VALIDATE(){
if [$1 -eq 0]
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
    exit 1   # manually exit if error comes
else
    echo "you are super user"
fi


dnf install mysql -y
VALIDATE $? "install MYSQL"

dnf install git -y
VALIDATE $? "install Git"