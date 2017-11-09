FROM heichblatt/archlinux-yaourt
USER root
RUN echo 'ALL ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY select-mirrors.sh /
RUN cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.full
RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist.full

USER user
