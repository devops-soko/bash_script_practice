#! /bin/bash

result=''
i=1
if [ $1 -ge 1 ] && [ $1 -le 1000 ]  
then
    while [ $i -le $1 ]
    do
        if [ `expr $i % 2` -eq 1 ]
        then
            result="$result""a"
        else
            result="$result""i"
        fi
        i=`expr $i + 1`
    done
fi

echo $result

exit 0