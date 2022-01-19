all: README.md 

README.md:
	echo "## Coursera Project: The Unix Workbench" > README.md
	echo "### Assignment: Guessing Game" >> README.md
	echo -n "\nProject creation date: " >> README.md
	date >> README.md
	echo -n "\nNumber of lines in guessgame.sh: " >> README.md
	wc -l < ./guessinggame.sh >> README.md