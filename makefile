# This file specifies the contents of the README.md
# This includes the following information
# 1) The title of the project
# 2) The time at which the makefile was run
# 3) The number of lines in the code in guessinggame.sh

README.md: guessinggame.sh
	echo "## Unix-Workbench Assignment" >> README.md
	echo "### Title of the project : \n" >> README.md
	echo "Guessing Game" >> README.md
	echo "### The date and time at which make was run : \n" >> README.md
	date +%c >> README.md
	echo "### The number of lines in the code is"  >> README.md
	wc -l < guessinggame.sh >> README.md

	echo "\n *Work done by - Sree Niranjanaa Bose*" >> README.md
