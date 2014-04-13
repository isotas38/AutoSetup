#!/bin/sh
sed -i "s/^# \(%wheel\tALL=(ALL)\tALL\)$/\1/" /etc/sudoers
