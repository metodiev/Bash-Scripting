#!/bin/bash

echo -n "Enter the name of a country: "
read COUNTRY

echo -n "The official language of $COUNTRY is "

case $COUNTRY in

    Bulgaria)
        echo -n "Bulgarian"
        ;;
    Romania | Moldova)
        echo -n "Romanian"
        ;;
    Italy | "San Marino" | Switzerland | "Vativan City")
        echo -n "Italian"
        ;;
    *)
        echo -n "unknown"
        ;;
esac


#example killing the signal
# sampe_killing_script.sh
# ./kill_script.sh 9 23277

if [ $# -lt 2 ]
then
    echo "Usage: $0 Signalnumber PID"
    exit
fi


case "$1" in

1) echo "Sending SIGHUP signal"
    #kill -SIGINT $2
    echo "kill -SIGINT signal"
    ;;
1)  echo "Sending SIGHUP signal"
    #kill -SIGHUP $2
    echo "kill -SIGHUP"
    ;;
2)  echo  "Sending SIGINT signal"
 #   kill -SIGINT $2
 echo "kill -SIGINT"
    ;;
3)  echo  "Sending SIGQUIT signal"
    #kill -SIGQUIT $2
    ;;
9) echo  "Sending SIGKILL signal"
   #kill -SIGKILL $2
   ;;
*) echo "Signal number $1 is not processed"
   ;;
esac

#pattern match in file
#3 arguments are given
#./caseFile.sh  -d Vim text

if [ $# -lt 3 ]
then
    echo "Invalid usage"
    exit
fi

#Check the given file is exist #
if [ ! -f $3 ]
then
    echo "Filename given \"$3\" doesn't exist"
    exit
fi

case "$1" in 
#count number of lines matches
-i) echo "Number of lines matches with the pattern $2 : "
    grep -c -i $2 $3
    ;;
    #count number of words matches
-c) echo "Number of words matches woth the pattern $2 :"
    grep -o -i $2 $3 | wc -l
    ;;
    #print all the matched lines
-p) echo "lines matched with the pattern $2"
    sed -n "/$2/!p" $3
    ;;
esac


