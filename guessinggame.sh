#!/usr/bin/env bash
# File: guessinggame.sh

solution=$(ls -al | grep ^[-] | wc -l)
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files (not directories), your current directory has?"
read response

function salvora {
  if ! [[ $response =~ ^[0-9]+$ ]]
then
  echo "Hmmm, I didn't get that, could there be a typo?"
  elif [[ $response -gt $solution ]]
then
  echo "Oops, your number's too high!"
  elif [[ $response -lt $solution ]]
then
  echo "Oops, your number's too low!"
  elif [[ $response -eq $solution ]]
then
  echo "Well done, you nailed it!"
  echo "Congratulations!"
fi
}

salvora #This is the name of the function
while ! [[ $response = $solution ]]
do
 echo "Please try again"
    read response
    salvora #Again, the function
done
 

