# #!/bin/bash

sleep 4

mkdir /run/php
# # source .env
# # # create directory to use in nginx container later and also to setup the wordpress conf
# # mkdir /var/www/
# # mkdir /var/www/html

cd /var/www/html

# # # remove all the wordpress files if there is something from the volumes to install it again
# # rm -rf *

# # # The commands are for installing and using the WP-CLI tool.

# # # downloads the WP-CLI PHAR (PHP Archive) file from the GitHub repository. The -O flag tells curl to save the file with the same name as it has on the server.
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

# # # # makes the WP-CLI PHAR file executable.
chmod +x wp-cli.phar

# # # # moves the WP-CLI PHAR file to the /usr/local/bin directory, which is in the system's PATH, and renames it to wp. This allows you to run the wp command from any directory
mv wp-cli.phar /usr/local/bin/wp

# # # curl -LO https://wordpress.org/latest.tar.gz

# # # tar -zxvf latest.tar.gz

# # # rm -rf /var/www/html/latest.tar.gz

# # # cp wordpress/wp-config-sample.php wordpress/wp-config.php

# # # # cp -a /tmp/wordpress/. /var/www/

chown -R www-data:www-data /var/www/html

# # downloads the latest version of WordPress to the current directory. The --allow-root flag allows the command to be run as the root user, which is necessary if you are logged in as the root user or if you are using WP-CLI with a system-level installation of WordPress.
wp core download --allow-root

rm wp-config-sample.php

# # # change the those lines in wp-config.php file to connect with database

# # # line 23
# # sed -i -r "s/database_name_here/wordpress/1"   wp-config.php
# # #line 26
# # sed -i -r "s/username_here/mbadaoui/1"  wp-config.php
# # #line 29
# # sed -i -r "s/password_here/wahyahamid/1"    wp-config.php

# # # #line 32
# # sed -i -r "s/localhost/mariadb/1"    wp-config.php

# # sed -i -r "s/'AUTH_KEY',    'put your unique phrase here'/ 2<A|[TIWhqOH1ZH@W5FTQYSq2eQwU8IJjt8KUA/q[ndEb+5USstzcYbkgK7}ENq/1" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/)Y9V-T.E4mOiajDnQqP-rs+K:/Lg:oz*lD``)cbc]dd[46L{@_]8%H_~u!QN78v]/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/$ HqfIHfKxza;-3P!OZyZj+[Y+U5he%,d+KN)S9AMLs%pY//k^Y~RQn@oxYLaj/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/|xXx9SE2d-ZQS=9^OxA2l@k5pL|wzBpk)]+N+^tVQ}4Fp4si-?~C|FE1s$^sA6/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/2{b2U&E7uuyG^KxKMUKjXFDsf%%><)Wl1GNzUs{Wd2aG]Zg7bng^)%qxMf}wg9/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/bWUXLL5QBJFYgEPtQf|-h0k1:.>->r7h|EF^+lzwTBE^[1dQ=[<>,+U0~]M]t/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/;M%cQV(O3 gW)yP>^pj+=}27jB?zkqxPohJ8Qz}b|-xh`osL.F#6h3c`cOEZaF/" wp-config.php
# # sed -i -r "0,/'put your unique phrase here'/s/'put your unique phrase here'/-E)J{-}fa9aRv-h+A2.!b06+zOqi:XhYVqrRyRgr|}tR@apFgz]iq9,F{2FCW/" wp-config.php

# # installs WordPress and sets up the basic configuration for the site. The --url option specifies the URL of the site, --title sets the site's title, --admin_user and --admin_password set the username and password for the site's administrator account, and --admin_email sets the email address for the administrator. The --skip-email flag prevents WP-CLI from sending an email to the administrator with the login details.
wp core install --url=${DOMAIN_NAME}/ --title=${WORDPRESS_TITLE} --admin_user=${WORDPRESS_ADMIN_USER} --admin_password=${WORDPRESS_ADMIN_PASSWORD} --admin_email=${WORDPRESS_ADMIN_EMAIL} --skip-email --allow-root

# # # # creates a new user account with the specified username, email address, and password. The --role option sets the user's role to author, which gives the user the ability to publish and manage their own posts.
wp user create ${WORDPRESS_USER} ${WORDPRESS_EMAIL} --role=author --user_pass=${WORDPRESS_PASSWORD} --allow-root

# # # # installs the Astra theme and activates it for the site. The --activate flag tells WP-CLI to make the theme the active theme for the site.
# wp theme install astra --activate --allow-root

# # # uses the sed command to modify the www.conf file in the /etc/php/7.3/fpm/pool.d directory. The s/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g command substitutes the value 9000 for /run/php/php7.3-fpm.sock throughout the file. This changes the socket that PHP-FPM listens on from a Unix domain socket to a TCP port.
sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = wordpress:9000/g' /etc/php/7.3/fpm/pool.d/www.conf

# touch /run/php7.3-fpm.pid

# # wp redis enable --allow-root
# # /etc/init.d/php7.3-fpm restart

# # # starts the PHP-FPM service in the foreground. The -F flag tells PHP-FPM to run in the foreground, rather than as a daemon in the background.
# # /usr/sbin/php-fpm7.3 -F
#!/bin/bash

