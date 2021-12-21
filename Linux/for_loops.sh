#!/bin/bash

STATES=( "California" "Hawaii" "NewMexico" "Alaska" "Florida" )

for i in "${STATES[@]}"
do
	if [ $i == "Hawaii" ]
	then
		echo "Hawaii is the Best!"
	else
		echo "I'm not fond of Hawaii"
	fi
done
