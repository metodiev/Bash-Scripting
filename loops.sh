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


#for loop
for (( i=1; i <=10; i++ ))
do
    echo "For loop"
    echo $i
done


#using 10 RANDOM numbers
for (( i=1; i<=10; i++ ))
do
    echo "$i: " $RANDOM
done