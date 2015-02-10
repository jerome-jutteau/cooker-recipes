#!/bin/sh

if [ $(id -u) != 0 ]; then
    sudo $0
    exit 0
fi

export DEBIAN_FRONTEND=noninteractive
apt-get -y update
apt-get -y upgrade

