#!/bin/bash

service mysql start

sed -i -r  "s/database_here/${MYSQL_DATABASE}/1" /var/www/initial_db.sql
sed -i -r  "s/user_here/${MYSQL_USER}/1" /var/www/initial_db.sql
sed -i -r  "s/password_user/${MYSQL_PASSWORD}/1" /var/www/initial_db.sql
sed -i -r  "s/password_root/${MYSQL_ROOT_PASSWORD}/1" /var/www/initial_db.sql

mysql < /var/www/initial_db.sql;

mysqladmin -uroot -p$MYSQL_ROOT_PASSWORD  shutdown

exec $@