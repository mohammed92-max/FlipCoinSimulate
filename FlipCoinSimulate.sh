#!/bin/bash -x

read -p "Enter number to toss coin" noOfTimes
heads=0
tails=0

for ((count=0; count<noOfTimes; count++))
do
        tossStatus=$((RANDOM%2))
        if [ $tossStatus -eq 1 ]
        then
                ((heads++))
        else
                ((tails++))
	fi
done

echo " Number of times heads has won is "$heads
echo " Number of times tails has won is "$tails
