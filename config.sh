#!/bin/bash
cp wp-config.sample.php wp-config.php
wget https://api.wordpress.org/secret-key/1.1/salt/ -O salt.txt
sed -i '51,58d' wp-config.php
cat salt.txt >> wp-config.php
