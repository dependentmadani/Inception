CREATE DATABASE IF NOT EXISTS wordpress;
-- FLUSH PRIVILEGES;
CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY 'hamid';
-- FLUSH PRIVILEGES;
GRANT ALL privileges ON wordpress.* TO 'mbadaoui'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'hamida';
