CREATE USER mbadaoui@'%' identified BY '123456';
GRANT ALL privileges ON *.* TO mbadaoui@'%';
FLUSH privileges;
quit