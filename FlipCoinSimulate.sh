#/bin/bash -x

tossStatus=$((RANDOM%2));

 if [ $tossStatus -eq 1 ]
        then
             echo "heads is winner"
        else
             echo "tails is winner"
 fi
