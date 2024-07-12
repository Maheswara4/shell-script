#!/bin/bash

echo "All variables: $@"
echo "Number of variables passed: $#"
echo "Script Name: $0"
echo "Current working directory: $PWD" #/home/ec2-user/shell-script
echo "Home directory of current user: $HOME" #/home/ec2-user
echo "Which user is running this script: $USER" #ec2-user
echo "Hostname: $HOSTNAME" #ip-172-89-43-55.ec2.internal
echo "Process ID of the current shell script: $$" #1940 ->this runing of process ID to create linux
sleep 60 &
echo "Process ID of last background command: $!" #2406