#!/bin/bash

#this is a comment #
: '
multiple comment
multiple comment
multiple comment
multiple comment
multiple comment
multiple comment'

info=$(date)
#cat  >> file.txt

echo "Print file on console"
cat << text
will be printed on the screen
text