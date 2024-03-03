#!/bin/sh

chmod +x /usr/local/etc/rc.d/torr-server
chmod +x /usr/local/lib/torr-server/TorrServer-freebsd-amd64

export GODEBUG=madvdontneed=1

# Enable the service
sysrc -f /etc/rc.conf torr_server_enable="YES"

# Start the service
service torr-server start
