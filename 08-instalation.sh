userid=$(id -u)

if[$usedid -ne 0]
then
    echo "please run the script with root access "
    exit 1 # manualy exit if error comes
else
    echo "you are root user"
fi

dnf install mysql -y
