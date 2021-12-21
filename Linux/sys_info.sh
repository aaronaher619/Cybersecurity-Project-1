#!/bin/bash

OUTFILE=~/research/sys_info.txt
PATHS=( "/etc/passwd" "/etc/shadow" )

if [ ! -d ~/research ]
then
        mkdir -p ~/research
fi

if [ -f $OUTFILE ]
then
        rm $OUTFILE
fi

touch $OUTFILE
echo "Starting Script" > $OUTFILE

for i in "${PATHS[@]}"
do
        ls -lsa $i >> $OUTFILE
done

date >> $OUTFILE
uname >> $OUTFILE
hostname -I | awk -F" " '{print $1}' >> $OUTFILE
hostname >> $OUTFILE
