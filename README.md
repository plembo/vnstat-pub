# Bandwidth reports using vnstat on EdgeRouter
A set of scripts for using [vnstat](https://humdi.net/vnstat/) to report total bandwidth used on a network. Gateway is a Ubiquiti EdgeRouter. WAN interface is eth0.

This solution requires configuring the router for [Debian packages](https://help.ui.com/hc/en-us/articles/205202560-EdgeMAX-Add-other-Debian-packages-to-EdgeOS) and then the install of ```vnstat```. A separate web server for publishing reports is also needed (the reports are not published on the router).

vnstati-update.sh uses the vnstati command to export summary and other reports in image (PNG) format.

vnstati-pub.sh copies those images from the router to the web server.

Cron jobs are set up on the router and web server to run these scripts every hours (```0 * * * *```).
 
A simple web page (index.html) formats the images for viewing.

In this case:

web page home is /data1/www/html/vnstati

The url for accessing the page will be https://host.example.com/vnstat

vnstati-update.sh is located under /config/scripts

vnstat-pub.sh is located in /usr/local/bin

