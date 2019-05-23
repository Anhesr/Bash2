
for x in $(cat $1)
	do
		ping=$(ping -c 1 -w $2 $x | egrep -o 'time=+[1-9.]+')
		if [ -z $ping ]; then
			echo " La ip $x no ha respondido"
		else
			echo " La ip $x respondio en $ping ms "
		fi
	done | sort -k6 