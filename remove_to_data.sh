#!/bin/sh

# Auto update
# yum update

#turn off selinux
nano /etc/selinux/config
...
SELINUX=disabled
...

# Stop MySQL
systemctl stop mysqld

# Copy MySQL
cp -r /var/lib/mysql /data2/mysql

# Rename MySQL
mv -rf /var/lib/mysql /var/lib/mysql_bk

# Create link MySQL
ln -s /data2/mysql /var/lib/mysql

# Start MySQL
systemctl start mysqld

# Status MySQL
systemctl status mysqld

