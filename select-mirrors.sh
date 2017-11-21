#!/bin/bash
grep -v kernel /etc/pacman.d/mirrorlist > /etc/pacman.d/mirrorlist.full # kernel.org mirror seems not syncing well
sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.full
rankmirrors -n 6 /etc/pacman.d/mirrorlist.full > /etc/pacman.d/mirrorlist