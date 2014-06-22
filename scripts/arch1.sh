#!/bin/sh
set -eu
CURRENT=$(dirname $(readlink -f $0))

loadkeys jp106
sgdisk --zap-all /dev/sda
sfdisk /dev/sda < $CURRENT/../conf/arch.layout
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt
sed -i '1i Server=http://ftp.jaist.ac.jp/pub/Linux/ArchLinux/\$repo/os/\$arch'
pacstrap -i /mnt base base-devel
genfstab -U -p /mnt >> /mnt/etc/fstab
cp $CURRENT/arch2.sh /mnt/root
arch-chroot /mnt /bin/bash
