echo "1: "
sed -n -r '/^[^ ]+ [0-9][0-9]min/p' peliculas.txt

echo "2: "
sed -n -r '/-[a-zA-Z ,]+-/p' peliculas.txt

echo "3: "
sed -n -r '/-[a-zA-Z ,]+-/p' peliculas.txt 

echo "4: "

sed -n -r '/2017/p' peliculas.txt 