#! /bin/bash

len=`echo ${#1}`

d=`expr $len / 2`

if [ `expr $len % 2` -ne 0 ]
then
    echo ${1:$d:1}
else
    echo ${1:$d - 1:2}
fi

exit 0
