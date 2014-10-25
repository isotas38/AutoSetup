#!/bin/sh
CURRENT=$(cd $(dirname $0) && pwd)
sh $CURRENT/scripts/upVBNetwork.sh
sh $CURRENT/scripts/configSSH.sh
sh $CURRENT/scripts/stopIptables.sh
sh $CURRENT/scripts/disabledSelinux.sh
sh $CURRENT/scripts/allowsWheelSudo.sh
sh $CURRENT/scripts/adjustTime.sh
sh $CURRENT/scripts/installYum.sh
