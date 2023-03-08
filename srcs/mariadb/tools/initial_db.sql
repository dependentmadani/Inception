CREATE DATABASE IF NOT EXISTS WORDPRESS;
CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY 'wahyahamid';
GRANT ALL privileges ON *.* TO 'mbadaoui'@'%';
FLUSH privileges;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'chdira';
