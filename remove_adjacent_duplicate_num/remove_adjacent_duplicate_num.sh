#! /bin/bash


nums=`echo $1 | sed 's/,/ /g'`
prev='-1'
result='-1'

for c in $nums
do
        if [ $c != $prev ]
        then
                if [ $result == '-1' ]
                then
                        result=$c
                else
                        result="$result,$c"
                fi
        fi
        prev=$c
done

echo $result


exit 0
