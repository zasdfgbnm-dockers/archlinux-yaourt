FROM archlinux
USER root

COPY remove-pkg-cache.hook /etc/pacman.d/hooks/

COPY custom_repo.conf /
RUN cat custom_repo.conf >> /etc/pacman.conf
RUN pacman -Sy --noconfirm sudo yaourt

RUN echo '%wheel ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN useradd -m user; usermod -a -G wheel user

USER user
