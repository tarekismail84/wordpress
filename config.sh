#!/bin/bash
cp wp-config.sample.php wp-config.php
wget https://api.wordpress.org/secret-key/1.1/salt/ -O salt.txt
sed -i '51,58d' wp-config.php
cat salt.txt >> wp-config.php
cat extra-wp-config.txt >> wp-config.php
sed -i "s|database_name_here|$1|g" wp-config.php
sed -i "s|username_here|$2|g" wp-config.php
sed -i "s|password_here|$3|g" wp-config.php
sed -i "s|localhost|$4|g" wp-config.php
