#! /bin/bash

### Name: Bakul Gupta
### Email: bakulgupta11@gmail.com ( https://github.com/bullhacks3)

echo "This script is used to install various packages according to the requirement of the user"


function mysql(){
	wget -c https://repo.mysql.com//mysql-apt-config_0.8.13-1_all.deb 
	sudo dpkg -i mysql-apt-config_0.8.13-1_all.deb
	sudo apt update
	sudo apt-get install mysql-server
}

function mongodb(){
	wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -
	echo "deb [ arch=amd64 ] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list
	sudo apt-get update
	sudo apt-get install -y mongodb-org
}


function ansible(){
	sudo apt update
	sudo apt install software-properties-common
	sudo apt-add-repository --yes --update ppa:ansible/ansible
	sudo apt install ansible
}

function nodejs(){
	curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
	sudo apt-get -y update
	sudo apt install nodejs
}

function phpmyadmin(){
	sudo apt-get -y update
	sudo apt-get install -y apache2 php
	sudo apt-get install -y phpmyadmin
	sudo ln -s /etc/phpmyadmin/apache.conf /etc/apache2/conf-available/phpmyadmin.conf
	sudo a2enconf phpmyadmin
	sudo service apache2 restart
}



echo "Installing various packages"
echo "Mysql Version 8.13.1"
mysql
echo "MongoDb Installation"
mongodb
echo "Ansible Installaton"
ansible
echo "Node Js Version 10"
nodejs
echo "Phpmyadmin Installation"
phpmyadmin


