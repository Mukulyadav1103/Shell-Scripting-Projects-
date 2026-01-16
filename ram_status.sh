#!/bin/bash

free_space=$(free -mt | grep "Total" | awk '{print $4}') 
TH=500

if [[ $free_space -le 500 ]]
then 
	echo "WARNING !!Ram is running low $free_space M"
else
	echo "Ram is sufficient $free_space M"
fi

