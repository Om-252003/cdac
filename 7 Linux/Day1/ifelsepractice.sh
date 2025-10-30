#!/bin/bash

read -p " Enter age : " age

#if [ $age -ge 18 ] # this works for all bash versions
if (( age >= 18 )) # this only works for latest bash versions.
then
echo " voting allowed "
else
echo " voting not allowed"
fi
