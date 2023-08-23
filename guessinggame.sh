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
	else
		echo "you are wrong"
		echo "please insert a new number"
                read response
                guess2 
	fi 
}

guess2
