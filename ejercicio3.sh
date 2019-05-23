if [ $# -ne 1 ];
then
echo "Tiene que introducir un fihero"
exit 1
fi

if [ ! -f $1 ];
then
echo "$1 no es un fichero"
exit 1
fi


for x in $(ls -a $HOME | grep '^\.')
	do 
		numchar=$(echo $x | wc -m)
		echo "$x $numchar"
done | sort -k2 -n | grep -o -E '^\..* '


sed '/^$/d' $1 > $1.sinLineasVacias

ps | sed -r -n '2,$ s/(^[^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)[ ]+([^ ]+)/PID: \1 Hora: \3 Ejecutable: \4/p' 


