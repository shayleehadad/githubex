README.md:
	echo "# Guessing Game Readme File" > README.md
	ls -l makefile | date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clear:
	rm README.md
