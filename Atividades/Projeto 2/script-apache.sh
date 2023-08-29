#!/bin/bash

echo "Atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "Instalando o Apache..."

sudo apt-get install apache2 -y

echo "Instalando a aplicação..."

cd /tmp
sudo git clone https://github.com/denilsonbonatti/linux-site-dio.git
cd linux-site-dio
sudo cp -R * /var/www/html
