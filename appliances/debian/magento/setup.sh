#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt-get -y install php5 php5-mysql mysql-server curl php5-gd php5-curl php5-mcrypt
curl http://www.magentocommerce.com/downloads/assets/1.9.0.1/magento-1.9.0.1.tar.gz > latest.tgz
tar -xvzf latest.tgz -C/var/www
chown -R www-data /var/www/magento

