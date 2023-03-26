#!/bin/bash
apt-get update 
apt-get upgrade -y

echo 'System updated!'
echo 'Installing Apache and Unzip'
apt-get install apache2 unzip -y

acho 'Creating Web Service...'
cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

echo 'Web Service created!'

