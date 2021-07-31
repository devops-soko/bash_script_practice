#! /bin/bash

i=1
num=$1
result=$1
if [ $1 -ge -100 ] && [ $1 -le 100  ] && [ $2 -le 100 ]
then
        while [ $i -lt $2  ]
        do
                num=`expr $num + $1`
                result="$result,$num"
                i=`expr $i + 1`
        done
        echo $result
else
        echo 'input error'
fi
