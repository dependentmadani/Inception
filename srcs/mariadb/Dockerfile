FROM debian:buster

EXPOSE 3306

RUN apt-get update && \
    apt-get install -y mariadb-server

COPY ./conf/50-server.conf /etc/mysql/mariadb.conf.d/
COPY ./tools /var/www/

RUN service mysql start && mysql < /var/www/initial_db.sql && rm -f /var/www/initial_db.sql;

CMD ["mysqld"]
#check this:
#https://peppe8o.com/create-a-custom-mariadb-container-with-raspberry-pi-and-docker/