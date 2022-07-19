# Bandwidth reports using vnstat on EdgeRouter
A script for using [vnstat](https://humdi.net/vnstat/) to report total bandwidth used on a network. Gateway is a Ubiquiti EdgeRouter. WAN interface is eth0.

This solution requires configuring the router for Debian packages (Ubiquiti Support and Help Center) and then the install of ```vnstat``` (Lembo, 2022). A separate web server for publishing reports is also needed (the reports are not published on the router).

On the router vnstati-update.sh uses the vnstati command to export summary and other reports in image (PNG) format, and then scp to copy those images over to the web server.

A cron job is set up on the router to run the script every hour (```0 * * * *```). A simple web page (index.html) formats the images for viewing.

In this case:

* vnstati-update.sh is located under /home/admin/bin
* image file on the router are created in /home/admin/vnstat
* web page home is /data1/www/html/vnstati on the web server
* url for accessing the page will be https://host.mydomain.com/vnstati

References:

"EdgeRouter - Add Debian Packages to EdgeOS". _Ubiquiti Support and Help Center_, https://help.ui.com/hc/en-us/articles/205202560-EdgeRouter-Add-Debian-Packages-to-EdgeOS.

Lembo, Phil. "vnstat on EdgeRouter 4". _GitHub Gist_, 18 July 2022, https://gist.github.com/plembo/668de6b83df51dfc2f3d360bfb0750e4.

