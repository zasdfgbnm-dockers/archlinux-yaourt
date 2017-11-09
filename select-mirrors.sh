#!/bin/bash
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.full
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.full
rankmirrors -n 6 /etc/pacman.d/mirrorlist.full > /etc/pacman.d/mirrorlist
