#!/bin/bash

#check if ./script_sample_folder exists in case not, create it
if [ ! -d ./script_sample_folder ]
then
    ./dir_spammer.sh
fi 

#loop through ./script_sample_folder
for dir in $(ls ./script_sample_folder)
do
    #create inside of each dir a .txt file with dir name as name and content
    touch ./script_sample_folder/$dir/$dir.txt 
    echo "script_sample_folder<$dir>" > ./script_sample_folder/$dir/$dir.txt 
done