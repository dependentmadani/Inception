FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY ./tools /var/www

RUN bash /var/www/script_runner.sh

CMD ["mysqld"]
#check this:
#https://peppe8o.com/create-a-custom-mariadb-container-with-raspberry-pi-and-docker/
