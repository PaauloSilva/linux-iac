#!/bin/bash


echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y

echo "Instalando o apache2..."
apt install apache2 -y

echo "Instalando o unzip..."
apt install unzip -y

echo "Clonando o repositório do GitHub..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main
cp -R /tmp/linux-site-dio-main/* /var/www/html/
