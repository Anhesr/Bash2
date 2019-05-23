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

echo "1======== "
sed -n -r '/^[^ ]+ [0-9][0-9]min/p' $1

echo "2======== "
sed -n -r '/-[a-zA-Z ,]+-/p' $1

echo "3======== "
egrep -o '\-[a-zA-Z ,]+\-' $1

echo "4======== "
pe16=$(egrep -c '2016' $1)
pe17=$(egrep -c '2017' $1)
echo "Hay $pe16 peliculas de 2016 y $pe17 peliculas de 2017"

echo "5======== "
sed '/^$/d' $1

echo "6======== "
egrep '^ *[eE]' $1

echo "7======== "
egrep --colour '[dlt][aeiou][dlt]' $1

echo "8======== "
egrep --colour '[Aa].*{8,}' $1

echo "9======== "
egrep --colour '^[^ ].+\.{3,3}' $1

echo "10======== "
sed -n -r 's/([áéíóúÁÉÍÓÚ])/"\1"/p' $1