# FROM debian:buster

# RUN apt-get -y update && apt-get install php php-fpm -y php-mysql  mariadb-client &&\
#     apt install curl -y
# #-y php7.3 php7.3-common php7.3-mbstring php7.3-gd php7.3-intl php7.3-xml php7.3-mysql php7.3-mcrypt

# # COPY ./tools/script_runner.sh .

# # COPY .env .

# # RUN chmod +x script_runner.sh

# # # WORKDIR /tmp 

# # # RUN curl -LO https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz

# # # RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php && \
# # #     cp -a /tmp/wordpress/. /var/www/

# # # RUN chown -R www-data:www-data /var/www/

# # # RUN sed -i -r "s/'database_name_here'/${MYSQL_DATABASE}/1" /tmp/wordpress/wp-config.php &&\
# # #     sed -i -r "s/'username_here'/${MYSQL_USER}/1" /tmp/wordpress/wp-config.php && \
# # #     sed -i -r "s/'password_here'/${MYSQL_PASSWORD}/1" /tmp/wordpress/wp-config.php &&\
# # #     sed -i -r "s/'localhost'/mariadb/1" /tmp/wordpress/wp-config.php
# # #sed for define( 'DB_NAME', 'database_name_here' );
# # #sed for define( 'DB_USER', 'username_here' );
# # #sed for define( 'DB_PASSWORD', 'password_here' );
# # #sed for define( 'DB_HOST', 'localhost' );

# # ENTRYPOINT ["./script_runner.sh"]

# # EXPOSE 9000

# EXPOSE 9000

# # RUN mkdir /var/www && mkdir /var/www/html

# # WORKDIR /var/www/html

# # RUN rm -rf * 
# #&& curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar &&\
#  #   chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# # RUN wp core download --allow-root && mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# # WORKDIR /

# COPY ./tools/script_runner.sh .

# # COPY ./tools/script_starter.sh .

# COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
# COPY ./tools/wp-config.php /var/www/html/wp-config.php

# RUN chmod +x script_runner.sh 
# #&& ./script_runner.sh
# #&& chmod +x script_starter.sh 
# #&& mkdir /run/php && ./script_runner.sh

# # WORKDIR /tmp 

# # RUN curl -LO https://wordpress.org/latest.tar.gz && tar -zxvf latest.tar.gz

# # RUN cp wordpress/wp-config-sample.php wordpress/wp-config.php && \
# #     cp -a /tmp/wordpress/. /var/www/

# # RUN chown -R www-data:www-data /var/www/

# # RUN sed -i -r "s/'database_name_here'/${MYSQL_DATABASE}/1" /tmp/wordpress/wp-config.php &&\
# #     sed -i -r "s/'username_here'/${MYSQL_USER}/1" /tmp/wordpress/wp-config.php && \
# #     sed -i -r "s/'password_here'/${MYSQL_PASSWORD}/1" /tmp/wordpress/wp-config.php &&\
# #     sed -i -r "s/'localhost'/mariadb/1" /tmp/wordpress/wp-config.php
# #sed for define( 'DB_NAME', 'database_name_here' );
# #sed for define( 'DB_USER', 'username_here' );
# #sed for define( 'DB_PASSWORD', 'password_here' );
# #sed for define( 'DB_HOST', 'localhost' );

# ENTRYPOINT ./script_runner.sh && tail -f

# CMD ["/usr/sbin/php-fpm7.3", "-F"]

# # CMD ["tail", "-f"]
FROM debian:buster

RUN apt-get update
RUN apt-get -y install php7.3 php-mysqli php-fpm wget

EXPOSE 9000

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d
COPY ./tools /var/www/

RUN chmod +x /var/www/script_starter.sh

ENTRYPOINT /var/www/script_starter.sh

CMD ["/usr/sbin/php-fpm7.3", "-F"]