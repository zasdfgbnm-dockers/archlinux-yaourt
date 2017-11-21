FROM heichblatt/archlinux-yaourt
USER root
RUN echo 'ALL ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY select-mirrors.sh /
# kernel.org mirror seems not syncing well
RUN grep -v kernel /etc/pacman.d/mirrorlist > /etc/pacman.d/mirrorlist.full
RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.full

USER user
