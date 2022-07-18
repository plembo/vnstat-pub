#!/bin/bash
# Script in $HOME/bin on router to create report files and copy to web server
HOME="/home/admin"
srcdir="$HOME/vnstat"
keyfile="$HOME/.ssh/id_rsa"
remusr="root@jupiter.casalembo.com"
pubdir="d1/www/html/vnstati"

echo "Create vnstat reports"
/usr/bin/vnstati -i eth0 -s -o /tmp/vnstat-summary.png
/usr/bin/vnstati -i eth0 -m -o /tmp/vnstat-monthly.png
/usr/bin/vnstati -i eth0 -d -o /tmp/vnstat-daily.png
/usr/bin/vnstati -i eth0 -h -o /tmp/vnstat-hourly.png

echo "Copy reports to web server"
/usr/bin/scp -i $keyfile $srcdir/vnstat-*.png $remusr:/$pubdir
