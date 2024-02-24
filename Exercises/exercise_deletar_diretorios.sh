#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ ! -d ./script_sample_folder ]
then
    ./dir_spammer.sh
fi  

# veify if have arguments
if [ "$#" == 0 ]
then #if dont have
    # loop through ./script_sample_folder/ 
    for dir in ./script_sample_folder/*
    do
        #verify if have files inside dir
        if [ "$(ls -A $dir)" ]
        then #if it have
            rm -r $dir #delete dir

        fi
    done # on this loop, all dirs inside ./script_sample_folder/ with file inside will be deleted
else # if the user pass arguments
    #verify if it is bolean
    if [[ "$1" == "true" || "$1" == "false" ]]
    then # if it is 
        #delete all inside ./script_sample_folder/
        rm -r ./script_sample_folder/*
    fi
fi