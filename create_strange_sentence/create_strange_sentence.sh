#! /bin/bash
result=''
for word in $1
do
        i=0
        para=`echo $word | grep -o .`
        for char in $para
        do
                if [ `expr $i % 2` -eq 0 ]
                then
                        char=`echo $char | tr [:lower:] [:upper:]`
                fi
                result=$result$char
                i=`expr $i + 1`
        done
        result="$result "
done

echo $result

exit 0
