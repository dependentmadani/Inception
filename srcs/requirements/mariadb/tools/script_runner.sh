#!/bin/bash

service mysql start
#run this script to replace the keyword from mariadb sql code
sed -i -r  "s/database_here/${MYSQL_DATABASE}/1" /var/www/initial_db.sql
sed -i -r  "s/user_here/${MYSQL_USER}/1" /var/www/initial_db.sql
sed -i -r  "s/password_user/${MYSQL_PASSWORD}/1" /var/www/initial_db.sql
sed -i -r  "s/password_root/${MYSQL_ROOT_PASSWORD}/1" /var/www/initial_db.sql

#create the database for wordpress
mysql < /var/www/initial_db.sql;

mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD  shutdown

exec $@