#!/bin/bash 

# monitoring free disk space and sent an  alert email
fu=$( df -H | egrep -v "Filesystem|tmpfs" | grep "xvda128" | awk '{print $5}' |tr -d %)
 
TO="mukulyadav3861@gmail.com"
if [[ $fu -gt 60 ]]
then 
	echo "Warning, disk space is low - $fu %" | mail -s "Disk Space Alert !" $TO
else
	echo "all good"
fi

