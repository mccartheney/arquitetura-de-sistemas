#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ -d ./script_sample_folder ]
then
    echo
else
    ./dir_spammer.sh
fi 

for dir in $(ls ./script_sample_folder)
do
    touch ./script_sample_folder/$dir/$dir.txt 
    echo "script_sample_folder<$dir>" > ./script_sample_folder/$dir/$dir.txt 
done