#! /bin/bash

num_check=`echo $1 | grep [^0-9]`
len_check=`echo $1 | wc -L`
echo $len_check
if [[ -n $num_check ]]
then
        echo false

else
        if [ $len_check -eq 4 ] || [ $len_check -eq 6 ]
        then
                echo true
        else
                echo false
        fi
fi

exit 0
