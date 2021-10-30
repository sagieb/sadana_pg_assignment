#!/usr/bin/env bash

function guess {
        echo "Please guess a number:"
        read user_input
}

echo "How many files are in the directory?"
keep_run=true
files_n=$(ls | wc -l) 
guess

while $keep_run
do
	if [[ $user_input -gt $files_n ]]
	then
		echo "Your number is too high!"
		guess
	elif [[ $user_input -lt $files_n ]]
	then
		echo "Your number is too low!"
		guess
	else
		echo "You guessed correctly! Congratulations!"
		keep_run=false
	fi
done


