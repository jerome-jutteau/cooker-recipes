#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt-get -y install php5 php5-mysql mysql-server curl php5-gd
curl http://drupalfr.org/sites/default/files/drupal-7.latest.tar.gz > latest.tgz
tar -xvzf latest.tgz -C/var/www
mv /var/www/drupal* /var/www/drupal7
chown -R www-data /var/www/drupal7
