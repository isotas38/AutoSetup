#!/bin/sh
yum -y install yum-plugin-fastestmirror
yum -y update
yum -y install ntp man tree vim-enhanced unzip wget gcc gcc-c++ make git zsh patch sudo
