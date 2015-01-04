#!/bin/sh

# Apache, PHP, curl, ruby
apt-get install -y apache2 php5 php5-mcrypt php5-gd php5-curl php5-mysql php5-memcached curl ruby

# Apache2 enable mod rewrite
ln -s /etc/apache2/mods-available/rewrite.load /etc/apache2/mods-enabled/rewrite.load

# Create directories
mkdir -p /mnt/httpd/

# PHP5 enable MCRYPT
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/cli/conf.d/25-mcrypt.ini
ln -s /etc/php5/mods-available/mcrypt.ini /etc/php5/apache2/conf.d/25-mcrypt.ini

# Composer
curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/bin --filename=composer

# SASS
gem install sass
