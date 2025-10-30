#!/bin/bash

find . -type f -iname "*.txt" > "txts.txt"
find . -type f -iname "*.sh" > "shells.txt"
find . -type f -iname "*.dat" > "dats.txt"

output="shells.txt"
>"$output"  # removed all old data ( overwriteen with blank in file )

for ((i=1;i<=10;i++))
do
	echo -e "Files $i days old are :\n" >> "$output"
	echo "***************************************" >> "$output"
	find . -type f -iname "*.sh" -mtime $i >> "$output"
	echo "***************************************" >> "$output"
	
	count=$(find . -type f -iname "*.sh" -mtime -$i | wc -l)
	echo "Total files before $i days are: $count"
	
done 

