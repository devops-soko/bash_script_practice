#! /bin/bash

flag1=1
result=''
if [ $1 -le 100  ] && [ $1 -ge 1 ] && [ $2 -le 100  ] && [ $2 -ge 1 ]
then
while [ $flag1 -le  $2 ]
do
        flag2=1
        while [ $flag2 -le $1 ]
        do
                result="$result$"
                flag2=`expr $flag2 + 1`
        done
        if [ $flag1 -ne $2 ]
        then
                result="$result\n"
        fi
        flag1=`expr $flag1 + 1`
done
fi

echo -e  $result