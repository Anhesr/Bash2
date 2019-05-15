for x in $(ls -a /home/i72saraf | grep '^\.')
	do 
		numchar=$(echo $x | wc -m)
		echo "$x $numchar"
done | sort -k2 -n | grep -o -E '^\..* '

proc=$(ps | sed -r -n '2,$ s/(^[0-9])+[ ]/p')

echo"$proc"

#grep -v '^ *$' > fich

#ps xm
#+([0-9a-z/])+[ ]+([0-9:])+[ ]+([0-9a-z\-])