#!/bin/bash

count=10
#if [ $count -gt 9 ] grather than -gt

#if [ $count -eq 10 ]
if (( $count < 9 ))
then
    echo "the condition is true"
else 
    echo "The condition is false"
fi


if (( $count < 5 && $count > 9 ))
then
    echo "the condition is grater than 5 and 9"
elif (( $count >= 9 ))
then
    echo "it is greater or eque than 9"
    #only if the first if is not true it will go through the 
    #different elif statment
fi

#first way
age=10
if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "correct age"
else
    echo "not correct age"
fi

#another way
if [[ "$age" -gt 18 && "$age" -lt 40 ]]
then
    echo "correct age"
else
    echo "not correct age"
fi

#third way to write and condition
if [ "$age" -gt 18 -a "$age" -lt 40 ]
then
    echo "correct age"
else
    echo "not correct age"
fi

#or operator ||
if [ "$age" -gt 18 -o "$age" -lt 40 ]
then
    echo "correct age"
else
    echo "not correct age"
fi