#!/bin/sh
rpm -ivh http://ftp.riken.jp/Linux/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
sed -i "s/^\(enabled=\)1$/\10/" /etc/yum.repos.d/epel.repo
