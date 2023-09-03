#!/usr/bin/env bash
# File: guess2.sh

echo "please enter your guess"
read response
echo "your guess is: $response"
num=$(ls -l | wc -l)
function guess2 {
  echo "i am in function gussesinggame"
  guess=$response
  if [[ $guess -eq $num ]]
	then 
		echo "you are correct"
  elif [[ $guess -lt $num ]]
	then
		echo "you are wrong, guess a higher number"
		echo "please insert a new number"
                read response
                guess2 
  elif [[ $guess -gt $num ]]
	then
	echo "you are wrong, guess a smaller number"
	echo "please insert a new number"
	read response
	guess2
	fi 
}

guess2
