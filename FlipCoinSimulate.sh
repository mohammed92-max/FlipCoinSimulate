#!/bin/bash -x

noOfTimes=50;
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

	if [[ $heads -eq 21 ]]
	then
		echo "Head is winner at 21 times"
		break;
	fi

	if [[ $tails -eq 21 ]]
        then
                echo "Tail is winner at 21 times"
		break;
        fi

done

	if [[ $heads -eq 21 ]]
        then
           	diff=$(($heads-$tails));
		echo "Heads won by $diff times to that of Tails"
        fi

        if [[ $tails -eq 21 ]]
        then
                diff=$(($tails-$heads));
                echo "Tails won by $diff times to that of Heads"
        fi
