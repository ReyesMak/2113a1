#!/bin/bash
#Extract files with filename starting "Trains_"
trainLog=`ls Trains_*`
#Looping through each file prefixing "Trains_"
for data in $trainLog
do
    #Output the filename
    echo "${data}"
    #Find lines of passenger trains which have ",E"
    #filter the stationId
    #sort the stationId
    #remove duplicate and find the number of duplicates
    #sort the stationId based on the number of duplicates in descending order
    #filter 3 stationId with the highest number of duplicates
    #sort the stationId based on alphabetical order if having the same number of duplicates
    grep ",E" $data | cut -d "," -f 3 | sort | uniq -c | sort -nr | head -3 | sort -k1,1nr -k2
done