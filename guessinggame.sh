#!/usr/bin/env bash
# File: guessinggame.sh

solution=$(ls -al | grep ^[-] | wc -l)
echo "Welcome to the Guessing Game!"
echo "Can you guess how many files (not directories), you current directory has?"
read response

function salvora {
  if [[ $response =~ ^[A-Z]+$ ]]
then
  echo "We are not doing Roman numbers here"
  elif ! [[ $response =~ ^[0-9]+$ ]]
then
  echo "Hmmm, I didn't get that, could it be a typo?"
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
salvora
while [[ $response -ne $solution ]]
do
  
 echo "Please try again"
    read response
    salvora 
done
 

