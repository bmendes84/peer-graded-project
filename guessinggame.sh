#!/usr/bin/env bash
# File: guessingGame.sh

function countFiles {
	i=$(ls | wc -l)
}

count=0
countFiles

while [[ $count -eq 0 ]]
do
	echo "How many files exist in this folder?"
	read response
	if [[ $response =~ [0-9]+ ]]
	then
		if [[ $response -eq $i ]]
		then
			echo "B I N G O !!!"
			count=$count+1
		elif [[ $response -gt $i ]]
		then
			echo "Your guess is too high"
		elif [[ $response -lt $i ]]
		then
			echo "Your answer is too low"	
		fi
	else
		echo "Not a valid answer"
	fi
done
