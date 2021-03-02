FROM archlinux:base

RUN pacman -Syv \
        reflector \
        --needed --noconfirm \
    && rm -rf /root/.cache \
    && rm -rf /var/cache/pacman/pkg/*

ENTRYPOINT [ "/usr/bin/reflector" ]