#!/bin/bash


#check if ./script_sample_folder exists in case not, create it
if [ ! -d ./script_sample_folder ]
then
    ./dir_spammer.sh
fi  

if [ "$#" == 0 ]
then
    for dir in ./script_sample_folder/*
    do
        if [ "$(ls -A $dir)" ]
        then 
            rm -r $dir

        fi
    done
else
    if [[ "$1" == "true" || "$1" == "false" ]]
    then
        rm -r ./script_sample_folder/*
    fi
fi