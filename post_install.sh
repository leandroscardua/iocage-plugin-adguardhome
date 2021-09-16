#!/bin/sh

sysrc -f /etc/rc.conf adguardhome_enable="YES"

password=$(openssl rand -base64 15)

passwordagh=$(htpasswd -b -n -B -C 10 '' $password | tr -d ':')

sed -i 's/  password:/  password: $passwordagh/g' /usr/local/bin/AdGuardHome.yaml

echo "User Name: admin" > /root/PLUGIN_INFO
echo "Password: $password" > /root/PLUGIN_INFO

service adguardhome start > /dev/null
