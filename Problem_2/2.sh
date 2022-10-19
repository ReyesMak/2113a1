#!/bin/bash
trainLog="`ls`"
if [ $# -ne 1 ]
then
    echo "Usage: ./Train_trace.sh <train ID>"
else
    for file in $trainLog
        do
        if [ "`grep -c 'Trains_' $file`" == 0  ]
        then
            echo "${file}" >> "$1.txt"
            grep $1 $file >> "$1.txt"
        fi
    done
    if [ "` grep -c $1 $1.txt `" == 0 ]
    then
        rm -f $1.txt
        echo "No records found for train $1"
    else
        echo "$1.txt will be generated. Please refer to the files given."
    fi
fi