#! /bin/bash

if [ $1 -gt 100000000 ]
then
    exit 1
fi

digits=`echo $1 | grep -o .`
result=0
for num in $digits
do
    result=`expr $num + $result`
done

echo $result

exit 0
