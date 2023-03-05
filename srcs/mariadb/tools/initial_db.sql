-- CREATE TABLE IF NOT EXISTS wordpress;
CREATE USER IF NOT EXISTS 'mbadaoui'@'%' IDENTIFIED BY '123456';
GRANT ALL privileges ON *.* TO 'mbadaoui'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY '123456';
FLUSH privileges;