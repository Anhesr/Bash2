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

cat $1 | sed -e '/^$/d' | sed -r -e '/==+/d' | sed -r -e 's/(\(.*\/.*\/.*\)) (.+)/|-> Fecha de estreno: \1/' | sed -r -e 's/Dirigida por (.+)$/|-> Director: \1/' | sed -r -e 's/Reparto: (.+)/|-> Reparto: \1/' | sed -r -e 's/([[:digit:]]hr [[:digit:]]*min)/|-> Duración: \1/' | sed -r -e '/^ +.+/d' | sed -r -e 's/(^[^(|)].*)/Título: \1/'
echo -e "\n"