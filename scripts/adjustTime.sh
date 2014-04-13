#!/bin/sh
cp /usr/share/zoneinfo/Japan /etc/localtime
ntpdate ntp.nict.jp
