FROM debian:buster

EXPOSE 3306

RUN apt-get update && \
    apt-get install mariadb-server -y

CMD ["mysqld"]