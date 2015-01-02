#!/usr/bin/env bash

# MySQL


echo 'mysql-server mysql-server/root_password password vagrant' | sudo debconf-set-selections
echo 'mysql-server mysql-server/root_password_again password vagrant' | sudo debconf-set-selections


apt-get install -y mysql-server
