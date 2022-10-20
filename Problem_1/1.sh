#!/bin/bash
#trainLog stores all the files in the "Problem_1" directory
trainLog="`ls`"
#For - Looping through files $data inside the "Problem_1" directory
for data in $trainLog
do
    # if - condition of no "Trains_" inside the file, which are all "Trains_2022-09-0x" files.
    if [ "`grep -c 'Trains_' $data`" == 0 ]
    then
    # then find all the lines with ",E" which represent passenger trains, segment the station ID column,sort it and remove duplicate
    echo $data
    grep ",E" $data | cut -d "," -f 3 | sort | uniq -c | sort -nr | head -3 | sort -k1,1nr -k2
    fi
done         