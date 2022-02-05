#!/usr/bin/env bash
#Filename: guessinggame.sh


function guessinggame {
	local answer=$(ls -a | wc -l)
	echo "Guess the number of files (including hidden files and directories) in the current directory:"
	read response
	while [[ "$response" =~ [^a-zA-Z0-9] ]] || [[ "$response" =~ [a-zA-Z] ]]
        do
                echo "Provide only positive integers. Please try again:"
                read response
        done
	
	if [[ $response -eq $answer ]]
	then
		echo "Congratulations! You guessed correctly!"
	else
		while [[ $response -ne $answer ]]
		do
			if [[ $response -gt $answer ]]
			then
				echo "You guessed too high. Please try again:"
			else
				echo "You guessed too low. Please try again:"
			fi
			
			read response
			
			while [[ "$response" =~ [^a-zA-Z0-9] ]] || [[ "$response" =~ [a-zA-Z] ]]
        		do
                		echo "Provide only positive integers. Please try again:"
                		read response
        		done
		done

		echo "Congratulations! You guessed correctly!"
	fi
}

guessinggame

