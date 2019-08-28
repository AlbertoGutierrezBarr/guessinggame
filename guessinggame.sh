#!/usr/bin/env bash
# File: guessinggame.sh

solution=$(ls | wc -l)
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files you current directory has?"
read response

function salvora {
if [[ $response -gt $solution ]]
then
  echo "Oops, your number's too high!"
  elif [[ $response -lt $solution ]]
then
  echo "Oops, your number's too low!"
elif [[ $response -eq $solution ]]
then
  echo "Well done, you nailed it!"
else
  echo "Please enter a number"
fi
}
while [[ $response -ne $solution ]]
do
  
 echo "Please try again"
    read response
    salvora 
done
 

