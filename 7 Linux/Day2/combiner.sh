#!/bin/bash

# display naes of files given by user while running

echo "$*"

# display files names separately

for file in "$@" # data we have taken comes in string format using $@
do
echo $file
done

# check if file exists

for file in "$@" # data we have taken comes in string format using $@
do
	if [ -f $file ]
	then
		echo " $file exists"
	else
		echo " $file doesn't exist"
	fi
done

# check if file exists, if yes then show content of file on screen

for file in "$@" # data we have taken comes in string format using $@
do
	if [ -f $file ]
	then
		echo -e " $file exists and it's content is :\n"
		cat "$file"
	else
		echo " $file doesn't exist"
	fi
done


# check if file exists, if yes then show content of file on screen, combine all data in final.tx and show it

output="final.txt"
for file in "$@" # data we have taken comes in string format using $@
do
	if [ -f $file ]
	then
		echo -e " $file exists"
		cat "$file" >> "$output"
	else
		echo " $file doesn't exist"
	fi
done

cat "$output"

# check if file exists, if yes then show content of file on screen, combine all data in final.tx and show it also print no of words, lines, and characters

cat "$output" | wc
















