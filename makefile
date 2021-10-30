all: README.md

README.md: guessinggame.sh
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	echo "\nmake was run on:" >> README.md
	date >> README.md
	echo "\nThe number of lines the guessinggame.sh script is:" >> README.md
	cat guessinggame.sh | wc -l >> README.md 

