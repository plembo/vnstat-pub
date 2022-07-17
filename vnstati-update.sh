#!/bin/bash
/usr/bin/vnstati -i eth0 -s -o /tmp/vnstat-summary.png
/usr/bin/vnstati -i eth0 -m -o /tmp/vnstat-monthly.png
/usr/bin/vnstati -i eth0 -d -o /tmp/vnstat-daily.png
/usr/bin/vnstati -i eth0 -h -o /tmp/vnstat-hourly.png
