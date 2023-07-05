#!/bin/bash

service mysql start

# mysql -u root -phamid -e "CREATE DATABASE IF NOT EXISTS mariadb;"
# mysql -u root -phamid -e "CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY 'hamid';"
# mysql -u root -phamid -e "GRANT ALL privileges ON mariadb.* TO 'mbadaoui'@'%';"
# mysql -u root -phamid -e "FLUSH PRIVILEGES;"
# mysql -u root -phamid -e "ALTER USER 'root'@'localhost' IDENTIFIED BY 'hamida';"
# mysql < ./initial_db.sql;
echo "password howa hada -> |$MYSQL_ROOT_PASSWORD|"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE}";
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL privileges ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "FLUSH PRIVILEGES;"
mysql -u root -p${MYSQL_ROOT_PASSWORD} -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
# service mysql stop
mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD  shutdown

