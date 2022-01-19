#!/usr/bin/env bash

function guess {
        echo "Please guess a number of files in the games directory."
        read number
	echo "You have guessed $number files."
}

file_count=$(ls -1 | wc -l)

# echo $file_count

echo "Hello, welcome to the guessing game! The purpose of this game is to guess, how many files are in the games directory. You will have multiple guesses and the program will give you hints if you aim too high or too low."

guess

while [[ $number -ne $file_count ]]
do
	if [[ $number -gt $file_count ]]
	then
		echo "Your guessed number is too high."
	elif [[ $number -lt 0 ]]
	then
		echo "There can't be less then zero files in directory!"
	elif [[ $number -lt $file_count ]]
	then
		echo "Your guessed number is too low."
	fi
	guess
done

echo "Congratulations your guess was correct. There are $file_count files in directory"