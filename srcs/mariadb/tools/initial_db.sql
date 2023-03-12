CREATE DATABASE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY 'hamid';
GRANT ALL privileges ON wordpress.* TO 'mbadaoui'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'hamida';
