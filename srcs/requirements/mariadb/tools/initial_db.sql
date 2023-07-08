CREATE DATABASE IF NOT EXISTS database_here;
CREATE USER IF NOT EXISTS 'user_here'@'%' IDENTIFIED BY 'password_user';
GRANT ALL privileges ON database_here.* TO 'user_here'@'%';
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'password_root';