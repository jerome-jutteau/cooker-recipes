#!/bin/sh

export DEBIAN_FRONTEND=noninteractive
apt-get -y install openjdk-7-jre curl

cat >> /root/.bashrc <<"EOD"
#Hadoop variables
export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export HADOOP_INSTALL=/opt/hadoop
export PATH=$PATH:$HADOOP_INSTALL/bin
export PATH=$PATH:$HADOOP_INSTALL/sbin
export HADOOP_HOME=$HADOOP_INSTALL
export HADOOP_MAPRED_HOME=$HADOOP_INSTALL
export HADOOP_COMMON_HOME=$HADOOP_INSTALL
export HADOOP_HDFS_HOME=$HADOOP_INSTALL
export HADOOP_YARN_HOME=$HADOOP_INSTALL
export HADOOP_CONF_DIR=$HADOOP_INSTALL/etc/hadoop
EOD

curl http://mirrors.ircam.fr/pub/apache/hadoop/common/hadoop-2.4.1/hadoop-2.4.1.tar.gz > latest.tgz
tar -xvzf latest.tgz -C/opt
adduser --system --disabled-login hadoop
mv /opt/hadoop* /opt/hadoop
chown -R hadoop /opt/hadoop

sed -i 's/export JAVA_HOME.*$/export JAVA_HOME=\/usr\/lib\/jvm\/java-7-openjdk-amd64/' /opt/hadoop/etc/hadoop/hadoop-env.sh

