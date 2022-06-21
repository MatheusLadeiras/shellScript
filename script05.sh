#!/bin/bash
# Instalaçao de servidor apache usando MySQL e PHP em ubuntu 18.04

installApache=$(sudo apt update | sudo apt install apache2)
allowTrafic=$(sudo ufw allow in "Apache Full")
installWhiptail=$(sudo apt install whiptail)

installMySQL=$(sudo apt install mysql-server) 
sudo mysql_secure_installation 

installPHP=$(sudo apt install php libapache2-mod-php php-mysql)
sudo cat > /etc/apache2/mods-enabled/dir.conf << EOF
<IfModule mod_dir.c>
    DirectoryIndex index.php index.html index.cgi index.pl index.xhtml index.htm
</IfModule>
EOF
resetServer=$(sudo systemctl restart apache2)
