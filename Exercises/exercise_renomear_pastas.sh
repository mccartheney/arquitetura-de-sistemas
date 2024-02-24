#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ ! -d ./script_sample_folder ]
then
    ./dir_spammer.sh
fi

#verify if user have passed arguments
if [ "$#" != 0 ]
then #if user have passed arguments

    #loop trough ./script_sample_folder
    for dir in $(ls ./script_sample_folder)
    do
        #rename folders like this : <argument><originalName>
        mv ./script_sample_folder/$dir "./script_sample_folder/$1$dir"
    done
else
    echo "give a name to change folder names"
fi