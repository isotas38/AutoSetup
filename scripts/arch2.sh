#!/bin/sh
set -eu

sed -i "s/^#\(en_US.UTF-8 UTF-8.*\)$/\1/" /etc/locale.gen
sed -i "s/^#\(ja_JP.UTF-8 UTF-8.*\)$/\1/" /etc/locale.gen
locale-gen 
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo KEYMAP=jp106 > /etc/vconsole.conf
ln -s /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
hwclock --systohc --utc
pacman -Sy
pacman -S --noconfirm gptfdisk
pacman -S --noconfirm syslinux
syslinux-install_update -i -a -m
sed -i "s/sda3/sda1/" /boot/syslinux/syslinux.cfg 
pacman -S --noconfirm openssh networkmanager virtualbox-guest-utils
pacman -S --noconfirm zsh git gvim
systemctl enable sshd.service
systemctl enable NetworkManager.service
