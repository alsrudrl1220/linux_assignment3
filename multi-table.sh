#!/bin/sh
multi=0
if [ -z $1 ] || [ -z $2 ]
then
	echo "Invaild input"
elif [ $1 -lt 1 ] || [ $2 -lt 1 ]
then
	echo "Input must be greater than 0"
else
	for i in $(seq 1 $1)
	do
		for j in $(seq 1 $2)
		do
			multi=`expr $i \* $j`
			printf "%s=%d\t" "$i*$j" $multi
		done
		printf "\n"
	done
fi
exit 0

