#!/bin/bash

service mysql start

until mysqladmin ping &>/dev/null; do
	sleep 1
done

mysql -uroot <<-EOSQL
	CREATE DATABASE wordpress;
	CREATE USER 'wordpressuser'@'%' IDENTIFIED BY 'password';
	GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpressuser'@'%';
	FLUSH PRIVILEGES;
EOSQL
