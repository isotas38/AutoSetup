#!/bin/sh
sed -i "s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-eth0 
sed -i "s/ONBOOT=no/ONBOOT=yes/" /etc/sysconfig/network-scripts/ifcfg-eth1
sed -i "s/BOOTPROTO=dhcp/BOOTPROTO=none/" /etc/sysconfig/network-scripts/ifcfg-eth1
echo "IPADDR=192.168.56.101" >> /etc/sysconfig/network-scripts/ifcfg-eth1 
ifup eth1
