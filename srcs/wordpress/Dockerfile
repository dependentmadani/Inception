FROM debian:buster

RUN apt-get update && \
    apt-get -y install php7.3 php-mysqli php-fpm wget

EXPOSE 9000

ARG WORDPRESS_TITLE
ARG WORDPRESS_DB_HOST
ARG WORDPRESS_ADMIN_USER
ARG WORDPRESS_ADMIN_EMAIL
ARG WORDPRESS_ADMIN_PASSWORD
ARG WORDPRESS_USER
ARG WORDPRESS_PASSWORD
ARG WORDPRESS_EMAIL

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools/ /var/www/

RUN chmod +x /var/www/script_starter.sh

CMD ["bash", "/var/www/script_starter.sh"]