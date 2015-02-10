#!/bin/sh

if [ $(id -u) != 0 ]; then
    sudo $0
    exit 0
fi

export DEBIAN_FRONTEND=noninteractive
apt-get -y install php5 php5-mysql mysql-server curl
curl https://wordpress.org/latest.tar.gz > latest.tgz
mkdir -p /var/www
tar -xvzf latest.tgz -C /var/www
chown -R www-data /var/www/wordpress

