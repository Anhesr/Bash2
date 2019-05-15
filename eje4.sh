#argumento 1:: ip.txt
#argumento 2:: segundos

ping -c 1 -w $2 IP

for x in $(cat $1)
	do
		$ping
		echo"La ip $x respondio en $ping"
	done | sort -k6 