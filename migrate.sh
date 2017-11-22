#!/bin/bash
read olddomain
read olddb
read domain
read db

tar xzf $olddomain.tar.gz
tar xzf mysql-2017-09-21.tar.gz
gzip -d backups/easyBACKUPS/2017-09-21/mysql/$olddb.gz
pv backups/easyBACKUPS/2017-09-21/mysql/$olddb | mysql $db
cp -rf $olddomain/htdocs/* /var/www/$domain/htdocs/
sudo chown -R www-data:www-data /var/www/$domain/htdocs/
sudo find /var/www/$domain/htdocs/ -type f -exec chmod 664 {} +
sudo find /var/www/$domain/htdocs/ -type d -exec chmod 775 {} +
ee clean --all
ee sync
