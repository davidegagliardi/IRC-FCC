#!/bin/sh
apt-get update
apt-get install apache2 -y
apt-get install python3.6 -y
mkdir /var/www/html/logs
chown -R ubuntu:ubuntu /var/www


#Aggiungere al crontab
* * * * * wget -O -P  /var/www/html/logs 10.11.12.122/logs.txt >/dev/null 2>&1
* * * * * python3  /var/www/html/parse.py >/dev/null 2>&1
