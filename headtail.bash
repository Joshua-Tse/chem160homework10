#!/bin/bash
ls $1 &> /dev/null
if [ $? -ne 0 ]
then
echo "No file found"
exit 1
fi
intregex='^[0-9]+$'
if ! [[ $2 =~ $intregex ]] ; then
echo "second argument must be an integer"
exit 1
fi
echo "head"
head -n +$2 $1
echo "tail" 
tail -n -$2 $1



