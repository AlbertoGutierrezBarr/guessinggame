README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game" > README.md
	echo "- README.md created on:" >> README.md
	date >> README.md
	echo "- guessinggame.sh contains" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "lines." >> README.md
