#!/bin/bash

# list all *.sh files and count total lines generated

data_needed=$(ls *.sh | wc -l)
echo "$data_needed"

# take extension as positional argument from user, show files of that extension

ls *"$1"


