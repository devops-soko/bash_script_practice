#! /bin/bash

result=0
i=$1

if [ $i -ge 2 ] && [ $i -le 1000 ]
then
	while [ $i -ge 2 ]
	do
		flag='true'
		j=2
		while [ `expr $j \* $j` -le $i ]
		do
			if [ `expr $i % $j` -eq 0 ]
			then
				flag='false'
			fi
			j=`expr $j + 1` 
		done

		if [ $flag == 'true' ]
		then
			result=`expr $result + 1`
		fi
		i=`expr $i - 1`
	done
fi
echo $result

exit 0
