#!/bin/sh
sed -i "s/^#\(UseDNS\) yes$/\1 no/" /etc/ssh/sshd_config
sed -i "s/^\(GSSAPIAuthentication yes\)$/#\1/" /etc/ssh/sshd_config
sed -i "s/^#\(GSSAPIAuthentication no\)$/\1/" /etc/ssh/sshd_config
service sshd restart
