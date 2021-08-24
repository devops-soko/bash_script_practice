#! /bin/bash

len=`echo $1 | wc -L`
if [ $len -lt 1 ]
then
        exit 1
fi

nums=`echo $1 | sed 's/,/ /g'`


count=0
for i in $nums
do
        u_len=`echo $1 | grep -o $i | wc -w `
        if [ $u_len -ne 1 ]
        then
                exit 1
        fi


        if [ $count -eq 0 ]
        then
                min=$i
        else
                if [ $min -gt $i  ]
                then
                        min=$i
                fi
        fi
        count=`expr $count + 1`
done

if [ $count -eq 1 ]
then
        echo -1

else
        result=`echo $1 | sed "s/$min,//g"`
        result=`echo $1 | sed "s/,$min//g"`
        echo $result
fi

exit 0
