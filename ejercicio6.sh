cat /etc/passwd | sed -n -r 's/(^[a-z]+):x:([0-9]+):([0-9]+):([a-zA-Z ,]+):([a-z/0-9]+):([a-z/0-9]+)/ =============== \n Logname : \1 \n Uid : \2 \n Gecos : \4 \n GID : \3 \n Home : \5 \n Shell : \6  /p'

