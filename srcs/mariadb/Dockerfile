FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY ./tools /var/www

ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD

RUN bash /var/www/script_runner.sh

CMD ["mysqld"]