#!/bin/bash 

#script should be execute with sudo/root access 
if [[ "${UID}" -ne 0 ]]
then 
	echo 'plz run with sudo or root'
	exit 1
fi 

#user should provide atleast one argument as username else guide him 

if [[ "${#}" -lt 1 ]]
then 
	echo "usage: ${0} USER_NAME [comment]..."
	echo 'create a user with name USER_NAME and comments field of comment'
	exit 1
fi

# store 1st argument as username 

USER_NAME="${1}"

#in case of more than one argument, store it as account comments 

shift 
COMMENT="${@}"

#Create a password 

PASSWORD=$(date +%s%N)
echo $PASSWORD

#create the user 

useradd -c "${COMMENT}" -m $USER_NAME 

# set the password for the user 

echo $PASSWORD | passwd --stdin $USER_NAME

# CHECK if user is successfully set or not 

if [[ $? -ne 0 ]]
then 
	echo 'password could not be set'
	exit 1
fi

# force password change on first login 


passwd -e $USER_NAME 

#DISPLAY

echo 
echo "username: $USER_NAME"
echo 
echo "Password: $PASSWORD"
echo
echo $(hostname)
