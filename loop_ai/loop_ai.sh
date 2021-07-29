#! /bin/bash

result=''
i=1
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

echo $result

exit 0