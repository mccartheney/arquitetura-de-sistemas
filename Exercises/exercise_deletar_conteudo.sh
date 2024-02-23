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
        if [[ $dir =~ "$1" ]]; then
            rm -r ./script_sample_folder/$dir/*
        fi
    done