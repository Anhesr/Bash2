for x in $(ls -a HOME | grep '^\.')
	do 
		numchar=$(echo $x | wc -m)
		echo "$x $numchar"
	done | sort -k2 -n | grep -o -E '^\..* '


grep -v '^ *$' > fich

ps xm