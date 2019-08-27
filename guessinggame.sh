#!/usr/bin/env bash
# File: guessinggame.sh

number=ls | wc -l
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files you current directory has?"
read response

function salvora {

for #there needs to be a loop, so it starts again if the answer is wrong
if [[ $response -gt $number ]]
then
  echo "Oops, your number's too high!"
  elif [[ $response -lt $number ]]
then
  echo "Oops, your number's too low!"
elif [[ $response -gt $number ]]
then
  echo "Well done, you nailed it!"
else
  echo "Please enter a number"
fi
}
 

