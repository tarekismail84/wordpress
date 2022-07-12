#!/bin/bash
cp wp-config.sample.php wp-config.php
wget https://api.wordpress.org/secret-key/1.1/salt/ -O salt.txt
sed -i '51,58d' wp-config.php
cat salt.txt >> wp-config.php
cat extra-wp-config.txt >> wp-config.php
sed -i 's/$1/database_name_here/g' wp-config.php
sed -i 's/$2/username_here/g' wp-config.php
sed -i 's/$3/password_here/g' wp-config.php
sed -i 's/$4/localhost/g' wp-config.php
