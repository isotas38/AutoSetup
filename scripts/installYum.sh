#!/bin/sh
yum -y install yum-plugin-fastestmirror
yum -y update
yum -y groupinstall 'Development Tools'
yum -y install ImageMagick autoconf curl gcc gcc-c++ git ipa-pgothic-fonts m4 make man ntp patch procps sudo texinfo tree unzip wget
yum -y install ImageMagick-devel bzip2-devel curl-devel db4-devel expat-devel gdbm-devel libffi-devel libxml2-devel libxslt-devel libyaml-devel ncurses-devel openssl-devel readline-devel tk-devel zlib-devel
