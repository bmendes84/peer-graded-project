all: README.md

README.md:
	touch README.md
	echo "# Peer-graded Assignment: Bash, Make, Git, GitHub" >> README.md
	echo "**Created at:**" >> README.md
	date >> README.md
	echo "**Number of lines in gessingGame:**" >> README.md
	< guessinggame.sh wc -l >> README.md

clean:
	rm README.md	
