#!/bin/sh
mkdir $HOME/.ssh
cat $HOME/id_rsa.pub >> $HOME/.ssh/authorized_keys
rm $HOME/id_rsa.pub
chmod 700 $HOME/.ssh
chmod 600 $HOME/.ssh/authorized_keys

