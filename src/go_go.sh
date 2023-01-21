#!/usr/bin/env bash
clear
trap "echo oh;exit" SIGTERM SIGINT

#echo -e "nameserver 103.86.96.100\nnameserver 103.86.99.100" >  /etc/resolv.conf
echo -e "nameserver 8.8.8.8\nnameserver 8.8.4.4" >  /etc/resolv.conf

cd /root/SDA_ALL/
rm -rf site_5
git reset --hard
git pull
cd /root/SDA_ALL/vanish_bo/ && cp /root/0nord_pass /root/SDA_ALL/vanish_bo/0nord_pass

pwd
while true
do
	echo "NEW ..............."
	dbus-uuidgen > /var/lib/dbus/machine-id
	cd /root/SDA_ALL/up4/
	timeout 5m python3 van_u4u.py
done
