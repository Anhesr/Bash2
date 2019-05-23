cpu=$(cat /proc/cpuinfo | egrep '^model name+' )
echo "$cpu"

cpuhz=$(cat /proc/cpuinfo | egrep '^cpu MHz+' )
echo "$cpuhz"

cpusz=$(cat /proc/cpuinfo | egrep '^cache size+' )
echo "$cpusz"

cpuvd=$(cat /proc/cpuinfo | egrep '^vendor_id+' )
echo "$cpuvd"

mont=$(cat /proc/mounts | sed -r -e 's/([^ ]+) ([^ ]+) ([^ ]+) ([^ ]+) ([^ ]+) ([^ ]+)/Punto de montaje: \2 Dispositivo: \1 Tipo de dispositivo: \3/')
echo "$mont"

pt=$(cat /proc/partitions | sed -r '3,$ s/[ ]+[0-9]+[ ]+[0-9]+[ ]+([0-9]+)[ ]+([a-z0-9]+)/Nombre : \2 Número de bloques \1 /' )
echo "$pt"


