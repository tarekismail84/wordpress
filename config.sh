#!/bin/bash
cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
wget https://api.wordpress.org/secret-key/1.1/salt/ -O /var/www/salt.txt
sed -i '51,58d' /var/www/html/wp-config.php
cat /var/www/html/salt.txt >> /var/www/html/wp-config.php
cat /var/www/html/extra-wp-config.txt >> /var/www/html/wp-config.php
sed -i "s|database_name_here|$1|g" /var/www/html/wp-config.php
sed -i "s|username_here|$2|g" /var/www/html/wp-config.php
sed -i "s|password_here|$3|g" /var/www/html/wp-config.php
sed -i "s|localhost|$4|g" /var/www/html/wp-config.php
