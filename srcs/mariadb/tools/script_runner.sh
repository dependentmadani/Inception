#!/bin/bash

service mysql start

# mysql -u root -phamid -e "CREATE DATABASE IF NOT EXISTS mariadb;"
# mysql -u root -phamid -e "CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY 'hamid';"
# mysql -u root -phamid -e "GRANT ALL privileges ON mariadb.* TO 'mbadaoui'@'%';"
# mysql -u root -phamid -e "FLUSH PRIVILEGES;"
# mysql -u root -phamid -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'hamida';"
mysql < ./initial_db.sql;
# service mysql stop

exec $@