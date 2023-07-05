FROM debian:buster

RUN apt-get update && \
    apt-get install -y mariadb-server mariadb-client
RUN apt-get install -y vim 
EXPOSE 3306
ARG MYSQL_ROOT_PASSWORD
ARG MYSQL_DATABASE
ARG MYSQL_USER
ARG MYSQL_PASSWORD
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d
COPY ./tools /var/www
# COPY ./tools/script_runner.sh .

RUN bash /var/www/script_runner.sh

# RUN service mysql start;
# RUN mysql < /var/www/initial_db.sql;
# RUN rm -f /var/www/initial_db.sql;

# && rm -f /var/www/initial_db.sql;

# RUN service mysql restart

CMD ["mysqld"]
#check this:
#https://peppe8o.com/create-a-custom-mariadb-container-with-raspberry-pi-and-docker/
