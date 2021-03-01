#!/bin/bash

echo "[Guessing Game  v1.0']"

function ask {
	echo "Please guess the number of the files in the current directory: "
	read guess
	files=$(ls -1 | wc -l)
}

ask

while [[  $guess  -ne $files ]]
do
	if [[ $guess  -lt $files ]]
	then
		echo "Too low.\nPlease try again."
	else 
		echo "Too high.\nPlease try again."
	fi
	ask
done

echo "Bravo! Correct"
echo "   ---  " && ls -1 
