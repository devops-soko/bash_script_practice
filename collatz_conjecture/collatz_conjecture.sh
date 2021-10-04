#!/bin/bash

num=$1
count=0

while [ $num -ne 1 ] && [ $count -le 500 ]
do
    if [ `expr $num % 2` -eq 0 ]
    then
        num=`expr $num / 2`
    else
        num=`expr $num \* 3 + 1`
    fi
    count=`expr $count + 1` 
done

if [ $count -gt 500 ]
then
    echo -1
else
    echo $count
fi

exit 0