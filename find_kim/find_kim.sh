#! /bin/bash

list=`echo $1 | sed 's/,/ /g'`

count=0
for name in $list
do
        if [ $name == 'kim' ]
        then
                echo "Kin is in $count"
        fi
        count=`expr $count + 1`
done

exit 0