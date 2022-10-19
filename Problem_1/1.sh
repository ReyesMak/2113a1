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
    stationName="`grep ",E" $data | cut -d "," -f 3 | sort | uniq`"
    # For - Looping through lines $station, which is stationId in columns $stationName
    for station in $stationName
    do
        # find the count of each stationID for passenger trains
        occurence="`grep ",E" $data | grep $station | wc -l`"
        # string formatting to make sure the unit digit of $occurence is under "_"
        if [ ${occurence} -lt 10 ]
        then
        # export output of all the $station and their occurence to a different .txt file
            echo "      ${occurence} ${station}" >> "test_${data}.txt"
        else
            echo "     ${occurence} ${station}"  >> "test_${data}.txt"
        fi
    done
    #output the "Trains_2022-09-0x..txt" file name
    echo "${data}:"
    #output the 3 highest occurence of $station and $occurence
    sort -k1,1nr -k2  < "test_${data}.txt" | head -3
    fi
done         