
README.md: guessinggame.sh
	
	touch README.md
	echo '# Guessing Game Project #' >> README.md
	echo " " >> README.md

	echo '`make` was run on: ' >> README.md
	date +"%A, %B%e %Y, at %T" >> README.md
	echo " " >> README.md
	
	echo 'The number of lines contained in `guessinggame.sh` is :' >> README.md
	grep -c "\S" guessinggame.sh >> README.md
	

clean:
	rm README.md
