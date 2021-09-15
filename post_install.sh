#!/bin/sh

sysrc -f /etc/rc.conf adguardhome_enable="YES"
service adguardhome start
