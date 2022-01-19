all: README.md 

README.md:
	echo "## Coursera Project: The Unix Workbench" > README.md
	echo "### Assignment: Guessing Game" >> README.md
	echo ""
	echo -n "Project creation date: " >> README.md
	date >> README.md
	echo ""
	echo -n "Number of lines in guessgame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md