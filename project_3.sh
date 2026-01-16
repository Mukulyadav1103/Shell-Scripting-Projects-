#!/bin/bash 

#Archive file or folder which contain more space 


#Variables 
base=/home/ec2-user/my-scripts
days=10
depth=1
run=0

#Check if the directory is present or not 

if [[ ! -d $base ]]
then 
	echo "directory does not exist: $base"
	exit 1
fi

#Create archive folder if not present 

if [[ ! -d $base/archive ]]
then 
	mkdir $base/archive
fi

#find the list of files larger than 20mb 

for i in 'find $base -maxdepth -depth -type f -size +20M'
do
	if [[ $run -eq 0 ]]
	then 
		echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $base/archive"
		gzip $i || exit 1
		mv $i.gz $base/archive || exit 1
	fi
done

