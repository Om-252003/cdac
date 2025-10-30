#!/bin/bash


if [ $# -eq 2 ]
then
echo "sum is : $(($1+$2)) "
elif [ $# -eq 3 ]
then
echo "sum is : $(($1+$2+$3)) "
elif [ $# -eq 4 ]
then
echo "sum is : $(($1+$2+$3+$4)) "
else
echo "invalid"
fi
