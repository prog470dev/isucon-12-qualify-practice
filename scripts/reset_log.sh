#!/bin/sh

# スクリプトの配置場所をカレントとする
cd `dirname $0`

# nginx
sudo cp ../conf/nginx/sites-enabled/* /etc/nginx/sites-enabled
sudo cp ../conf/nginx/nginx.conf /etc/nginx/nginx.conf
sudo nginx -t
sudo mv /var/log/nginx/access.log /var/log/nginx/access.log.`date +%Y%m%d%H%M%S`
sudo systemctl restart nginx

# mysql
sudo cp ../conf/mysql/mysqld.cnf /etc/mysql/mysql.conf.d/mysqld.cnf
sudo mv /var/log/mysql/mysql-slow.log /var/log/mysql/mysql-slow.log.`date +%Y%m%d%H%M%S`
sudo systemctl restart mysql
