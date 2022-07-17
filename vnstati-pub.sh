#!/bin/sh
# To copy vnstat reports to web server
keyfile=/root/.ssh/id_rsa
pubdir=/data1/www/html/vnstati
remusr=admin@gateway.example.com
srcdir=/tmp

echo "Get vnstat reports"
scp -i $keyfile -s $remusr:$srcdir/vnstat-*.png $pubdir
