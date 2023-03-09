FROM debian:buster

COPY .env .

RUN apt-get update && \
    apt-get install -y curl &&\
    apt-get install -y tar && \
    # apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip &&\
    apt-get install -y php libapache2-mod-php php-mysql php-fpm &&\
    apt-get install -y systemd

COPY ./tools/script_runner.sh .

RUN chmod +x script_runner.sh 

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d

# WORKDIR /tmp 

# RUN curl -LO https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz

# RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php && \
#     cp -a /tmp/wordpress/. /var/www/

# RUN chown -R www-data:www-data /var/www/

# RUN sed -i -r "s/'database_name_here'/${MYSQL_DATABASE}/1" /tmp/wordpress/wp-config.php &&\
#     sed -i -r "s/'username_here'/${MYSQL_USER}/1" /tmp/wordpress/wp-config.php && \
#     sed -i -r "s/'password_here'/${MYSQL_PASSWORD}/1" /tmp/wordpress/wp-config.php &&\
#     sed -i -r "s/'localhost'/mariadb/1" /tmp/wordpress/wp-config.php
#sed for define( 'DB_NAME', 'database_name_here' );
#sed for define( 'DB_USER', 'username_here' );
#sed for define( 'DB_PASSWORD', 'password_here' );
#sed for define( 'DB_HOST', 'localhost' );

ENTRYPOINT ["./script_runner.sh"]

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]
