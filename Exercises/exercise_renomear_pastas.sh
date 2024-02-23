#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ -d ./script_sample_folder ]
then
    echo
else
    ./dir_spammer.sh
fi 

#loop trough ./script_sample_folder
for dir in $(ls ./script_sample_folder)
do
    #rename folders
    mv ./script_sample_folder/$dir "./script_sample_folder/$1$dir"
done