#!/bin/bash
sudo apt-get update -y
sudo apt-get install apache2 apache2-utils mariadb-client php7.4 libapache2-mod-php7.4 php7.4-mysql -y 
sudo apt-get install php-common php7.4-cli php7.4-common php7.4-json php7.4-opcache php7.4-readline -y 
sudo apt-get install php7.4-bcmath php7.4-curl php7.4-fpm php7.4-gd php7.4-xml php7.4-mbstring -y
sudo systemctl enable apache2.service
sudo mkdir /var/www/html/path



