FROM heichblatt/archlinux-yaourt
USER root
RUN echo 'ALL ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY select-mirrors.sh /
COPY remove-pkg-cache.hook /etc/pacman.d/hooks/
RUN curl "https://www.archlinux.org/mirrorlist/?country=US&country=CN&protocol=http&protocol=https&ip_version=4&ip_version=6&use_mirror_status=on" -o /etc/pacman.d/mirrorlist
RUN sed -i 's/^#Server/Server/' /etc/pacman.d/mirrorlist

USER user
