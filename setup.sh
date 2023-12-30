#!/bin/bash

#echo "all params: $*"
#echo "number of params: $#"


for param in $*
do
	if [ -d "$param" ]
	then 
		echo "excuting scripts in the config folder "
		ls -l "$param"
	fi

	echo $param
done


function score_sum() {
	sum=0
	while true
	do
		read -p "enter a score: " score
		if [ "$score" == "q" ]
		then 
			break
		fi

	sum=$(($sum+$score))
	echo "total score: $sum"
 done
}

function create_file() {
	file_name=$1
	touch $file_name
	echo "file $file_name created"
}	

create_file test.txt

create_file myfile.yml

create_file  myscripts.sh

			
