#!/sh/bin
sed -i "s/^\(SELINUX=\)enforcing$/\1disabled/" /etc/sysconfig/selinux
