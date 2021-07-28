#! /bin/bash

if [ `expr $1 % 2` -ne 0 ] 
then
	echo 'Odd'
else
	echo 'Even'
fi

exit 0
