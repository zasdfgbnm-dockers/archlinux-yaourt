FROM heichblatt/archlinux-yaourt
USER root
RUN echo 'ALL ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY select-mirrors.sh /
RUN curl "https://www.archlinux.org/mirrorlist/?country=all&protocol=http&protocol=https&ip_version=4&use_mirror_status=on" -o /etc/pacman.d/mirrorlist
RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist

USER user
