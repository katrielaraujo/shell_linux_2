#!/bin/bash

echo "atualizando servidor"
apt-get update
apt-get upgrade -y
echo "instalando programas"
apt-get install apache2 -y
apt-get install unzip -y
echo "baixo arquivos"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

