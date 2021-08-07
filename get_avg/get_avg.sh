#! /bin/bash

para=`echo $1 | sed 's/,/ /g'`
len=`echo $1 | awk '{print split($1, array, ",")}'`

if [ ${1:0:1} == , ] || [ ${1: -1} == , ] || [[ -n $(echo $1 | grep [^0-9,]) ]] || [ $len -gt 10 ]
then
        exit 1
fi


total=0
for var in $para
do
        if [ $var -lt 0 ] || [ $var -gt 1000 ]
        then
                exit 1
        fi
        total=`expr $total + $var`

done

echo "scale=3; $total / $len" | bc -l
