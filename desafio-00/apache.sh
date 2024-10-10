#!/bin/bash

# Atualizar pacotes
sudo apt-get update

# Instalar pacotes necessÃ¡rios
sudo apt-get install -y apache2

#sudo tee /etc/apache2/sites-available/meusite.conf <<EOF
#<VirtualHost *:80>
#    ServerName meusite.com
#    ServerAdmin webmaster@localhost
#    DocumentRoot /var/www/
#    ErrorLog ${APACHE_LOG_DIR}/error.log
#    CustomLog ${APACHE_LOG_DIR}/access.log combined
#</VirtualHost>
#EOF

#sudo a2ensite meusite.conf
#sudo a2enmod rewrite

#sudo a2dissite 000-default.conf

sudo systemctl start apache2
sudo systemctl enable apache2