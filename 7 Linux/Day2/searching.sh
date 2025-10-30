#!/bin/bash

# grep -l "$1" *.txt | cat >> "listOfFiles.txt"
# OR
# find files which have data in them
listOfFiles=$(grep -l "omsai" *.txt)

# use loop to print one filename at a time
for file in $listOfFiles
do
	echo -e "$file \n"
done

# print all lines that has data and print line numbers

for file in $listOfFiles
do
	grep -i -n "omsai" $file
done



















