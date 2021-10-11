#!/bin/bash

f_num=$1
s_num=$2
sum=0

if [ $f_num -gt $s_num ]
then
    tmp=$f_num
    f_num=$s_num
    s_num=$tmp
fi

while [ $f_num -le $s_num ]
do
    sum=`expr $sum + $f_num`
    f_num=`expr $f_num + 1`
done

echo $sum

exit 0