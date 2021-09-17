#!/bin/sh

sysrc -f /etc/rc.conf adguardhome_enable="YES"

echo "User Name: admin" > /root/PLUGIN_INFO
echo "Password: admin" > /root/PLUGIN_INFO

service adguardhome start > /dev/null
