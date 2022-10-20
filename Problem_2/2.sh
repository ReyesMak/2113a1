#!/bin/bash
#Extract files with filename starting "Trains_"
trainLog="`ls Trains_*`"
#Output Usage error if the number of input arguments is not 1
if [ $# -ne 1 ]
then
    echo "Usage: ./Train_trace.sh <train ID>"
else
    #Looping through each file prefixing "Trains_"
    for file in $trainLog
    do
        #Output filename to a newly created .txt file named <train_id>.txt
        echo "${file}" >> "$1.txt"
        #Output lines related to the specific train_id to the .txt file
        grep $1 $file >> "$1.txt"
    done
        #if <train_id>.txt does not contain the specfic train_id
    if [ "` grep -c $1 $1.txt`" == 0 ]
    then
        #it means the train_id does not exist and the newly created <train_id>.txt can be deleted
        rm -f $1.txt
        #Output no records found in terminal
        echo "No records found for train $1"
    else
        #Output that the <train_id>.txt is generated as the train_id can be found in <train_id>.txt 
        echo "$1.txt will be generated. Please refer to the files given."
    fi
fi