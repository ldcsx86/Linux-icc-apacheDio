#!/bin/bash
echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
echo "instalando pacotes..."
apt-get install apache2 unzip -y
echo "baixando arquivos web..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd /linux-site-dio-main
echo "copiando arquivos para o apache..."
cp -R * /var/www/html

