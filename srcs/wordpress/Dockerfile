FROM debian:buster

EXPOSE 9000

RUN apt-get update && \
    apt-get install -y curl &&\
    apt-get install -y tar && \
    apt-get install -y php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip

WORKDIR /tmp 

RUN curl -LO https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz

RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php && \
    cp -a /tmp/wordpress/. /var/www/

RUN chown -R www-data:www-data /var/www/

RUN sed -i "s/'database_name_here'/${MYSQL_DATABASE}/g" /tmp/wordpress/wp-config.php &&\
    sed "s/'username_here'/${MYSQL_USER}/g" /tmp/wordpress/wp-config.php && \
    sed "s/'password_here'/${MYSQL_PASSWORD}/g" /tmp/wordpress/wp-config.php
#sed for define( 'DB_NAME', 'database_name_here' );
#sed for define( 'DB_USER', 'username_here' );
#sed for define( 'DB_PASSWORD', 'password_here' );
#sed for define( 'DB_HOST', 'localhost' );

CMD ["bash"]