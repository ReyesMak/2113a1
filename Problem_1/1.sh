#!/bin/bash
trainLog="`ls`"
for data in $trainLog
do
    if [ "`grep -c 'Trains_' $data`" == 0 ]
    then
    stationName="`grep ",E" $data | cut -d "," -f 3 | sort | uniq`"
    for station in $stationName
    do
        occurence="`grep ",E" $data | grep $station | wc -l`"
        if [ ${occurence} -lt 10 ]
        then
            echo "      ${occurence} ${station}" >> "test_${data}.txt"
        else
            echo "     ${occurence} ${station}"  >> "test_${data}.txt"
        fi
    done
    echo "${data}:"
    sort -k1,1nr -k2  < "test_${data}.txt" | head -3
    fi
done         