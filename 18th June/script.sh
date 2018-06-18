#! /bin/bash

echo "***What you want to do ****"
echo "***1. Prime Number ****"
echo "***2. Odd & Even Number ****"
read pattern

case "$pattern" in

     "1") echo "Enter number to see prime number upto that"
read num

for ((i=2;i<=num;i++))
do
        flag=0
        for ((j=2;j<i;j++))
        do
                if [ $(($i%$j)) -eq 0 ]
                then
                        flag=1
                fi
        done

        if [ $flag -eq 0 ]
        then
                echo $i
        fi
done

;;


"2") echo "Enter the number upto that you want EvenandOdd"

	read num

for ((i=1;i<=num;i++))
do
	if [ $(($i%2)) -eq 0 ]
	then
		echo "$i is even number"
	else
		echo "$i is odd number"
	fi
done

;;
esac



