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
		echo "heads= "$heads;
        else
                ((tails++))
		echo "tails= "$tails;
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

	if [[ $heads -eq $tails ]]
	then
		if [[ $(($heads-$tails)) -ge 2 ]]
		then
			echo "After tie,head has won with difference of minimum 2 points"
			break;
		fi

		if [[ $(($tails-$heads)) -ge 2 ]]
                then
                        echo "After tie,tail has won with difference of minimum 2 points"
                        break;
                fi
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
