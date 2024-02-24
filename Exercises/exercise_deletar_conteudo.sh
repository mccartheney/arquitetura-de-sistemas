#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ ! -d ./script_sample_folder ]
then
    ./dir_spammer.sh
fi 

#check if user have passed args
if [ "$#" != 0 ]
then #if have arguments
    #loop through ./script_sample_folder
    for dir in $(ls ./script_sample_folder)
        do
            # check if this dir have the argument in name
            if [[ $dir =~ "$1" ]]
            then #if it have
                #delete folder
                rm -r ./script_sample_folder/$dir/*
            fi
        done
else #if it not have passed args
    echo "give a letter to delete specific dirs"
fi