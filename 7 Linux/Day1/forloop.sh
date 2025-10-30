#!/bin/bash

# for loop for 1 to 5 increment by 1
#for i in {1..5}
#do
#echo $i
#done

#n=$1
##for i in { 1..$n }
#for (( i=1;i<=n;i++ ))
#do
#echo $i
#done

read -p "Enter start and end : " start end

if [ start < end ]
then
	for (( start;start<=end;start++ ))
	do
		echo "$start"
	done
else
	for (( start;start>=end;start-- ))
	do
		echo "$start"
	done
fi

