#! /bin/bash
number=1

#while loop
while [ $number -le 10 ]
do
    echo "$number"
    number=$(( number+1 ))
done

num=1
#until loop
until [ $num -ge 10 ]
do
    echo $num
    num=$(( num+1 ))
done