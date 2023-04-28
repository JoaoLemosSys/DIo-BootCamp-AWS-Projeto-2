#!/bin/bash

echo "Implementando Servidor Web Apache..."

echo "Atualizando apt-get..."
apt-get update

echo "Instalando Servidor Apache..."
apt-get install apache2 -y

echo "Instalando Unzip..."
apt-get install unzip

echo "Baixando arquivos do site de exemplo..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando..."
unzip -o /tmp/main.zip 
echo "Copiando arquivos para pasta do servidor Apache"
cd linux-site-dio-main 
cp *.* /var/www/html -f

echo "Finalizado."