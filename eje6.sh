oldIFS=$IFS
IFS=':'
while read fila
do
	echo -e "\n         "\
		"\n lognamme : ${fila[0]}"
done < /etc/passwd

IFS=$oldIFS