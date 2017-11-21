FROM heichblatt/archlinux-yaourt
USER root
RUN echo 'ALL ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY select-mirrors.sh /

USER user
