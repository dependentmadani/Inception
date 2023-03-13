FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client

EXPOSE 3306

COPY ./conf /etc/mysql/mariadb.conf.d
COPY ./tools .

# RUN chmod +x ./script_runner.sh && ./script_runner.sh

RUN service mysql start && mysql < ./initial_db.sql;

# && rm -f /var/www/initial_db.sql;

# RUN service mysql restart

CMD ["mysqld"]
#check this:
#https://peppe8o.com/create-a-custom-mariadb-container-with-raspberry-pi-and-docker/