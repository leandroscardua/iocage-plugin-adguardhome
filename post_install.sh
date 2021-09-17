#!/bin/sh

sysrc -f /etc/rc.conf adguardhome_enable="YES"

service adguardhome start > /dev/null

echo
cat <<EOF > /root/PLUGIN_INFO
#---------------------------------------------------------------------#
# Getting started with the AdGuard Home plugin
#---------------------------------------------------------------------#
AdGuard Home is a network-wide software for blocking ads & tracking. 
After you set it up, it'll cover ALL your home devices, 
and you don't need any client-side software for that.
Source: https://github.com/AdguardTeam/AdGuardHome
 
The default user for the Admin Portal is "admin" with password "admin"

EOF
