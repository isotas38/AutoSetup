#!/bin/sh
yum -y install yum-plugin-fastestmirror
yum -y update
yum -y install ntp man tree unzip wget gcc gcc-c++ make git zsh patch sudo procps autoconf
yum -y install openssl-devel readline-devel gdbm-devel ncurses-devel db4-devel libffi-devel libyaml-devel tk-devel
