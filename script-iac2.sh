#!/bin/bash

echo "Atualizando Server"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação"
cd /tmp
wget https://github.com/TheVidal98/projeto_dio_linux/archive/refs/heads/main.zip
unzip main.zip
cd projeto_dio_linux
cp -R * /var/www/html/
