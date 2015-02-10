#!/bin/sh

if [ $(id -u) != 0 ]; then
    sudo $0
    exit 0
fi

a2ensite wordpress
a2dissite default
/etc/init.d/mysql stop

