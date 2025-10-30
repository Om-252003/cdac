#!/bin/bash

# not giving 2nd input doesn't count as error. it will just consider blank.

read -p "Who are you and where r u from ? " name native

echo "so your name is $name and you're from $native"

echo "so you're '$name' and youre from '$native' "

echo -e "so you're $name \n and you're from $native " 



