#!/usr/bin/env bash
echo "Installing_LAMP"
sudo yum update -y
echo "installing Apache"
sudo yum install httpd -y
echo "start_apache"
sudo systemctl start httpd
sudo systemctl enable httpd
echo "Installing_mariaDB"
sudo yum install mariadb-server -y
sudo systemctl start mariadb.service
sudo systemctl enable mariadb.service
sudo yum install wget -y
sudo yum install nano -y
#wget http://repo.mysql.com/mysql-community-release-el7-5.noarch.rpm
#sudo rpm -ivh mysql-community-release-el7-5.noarch.rpm
sudo yum update
#sudo yum install mysql-server
#sudo systemctl start mysqld
echo "installing_PHP"
sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm -y
sudo yum install yum-utils -y
sudo yum-config-manager --enable remi-php72
sudo yum install php php-common php-opcache php-mcrypt php-cli php-gd php-curl php-mysql -y
sudo systemctl restart httpd
echo "Installing_phpmyadmin"
sudo yum install epel-release -y
sudo yum install phpmyadmin -y
