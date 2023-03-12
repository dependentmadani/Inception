    sleep 7
    sed -i "s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/" "/etc/php/7.3/fpm/pool.d/www.conf";
    chown -R www-data:www-data /var/www/*;
    chown -R 755 /var/www/*;
    mkdir -p /run/php/;
    touch /run/php/php7.3-fpm.pid;

    echo "Wordpress: setting up..."
    mkdir -p /var/www/html
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
    chmod +x wp-cli.phar; 
    mv wp-cli.phar /usr/local/bin/wp;
    cd /var/www/html;
    wp core download --allow-root;
    mv /var/www/wp-config.php /var/www/html/
    rm /var/www/html/wp-config-sample.php
    # echo "Wordpress: creating users..."
    # wp core install --url=mbadaoui.42.fr --title=Wordpress --admin_user=mbadaoui --admin_password=hamid --admin_email=mbadaoui@42.fr --skip-email --allow-root
    echo --url=${DOMAIN_NAME} --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL}
    wp core install --url=mbadaoui.42.fr --title=local --admin_user=mbadaoui --admin_password=hamid --admin_email=hamida@example.com --skip-email --allow-root
    wp user create --allow-root ${WORDPRESS_USER} ${WORDPRESS_EMAIL} --user_pass=${WORDPRESS_PASSWORD};
    echo "Wordpress: set up!"


exec "$@"