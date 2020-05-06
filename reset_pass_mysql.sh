#!/bin/sh

# Auto update
# yum update

# Stop MySQL
systemctl stop mysqld

# Set the mySQL environment option
systemctl set-environment MYSQLD_OPTS="--skip-grant-tables"

# Start MySQL using the options you just set
systemctl start mysqld

# Login as root without a password
mysql -u root

# Change pass
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'MyNewPass';
exit

# Stop MySQL
systemctl stop mysqld

# Unset the MySQL environment option so it starts normally next time
systemctl unset-environment MYSQLD_OPTS

# Start MySQL normally:
systemctl start mysqld

# Status MySQL
systemctl status mysqld

