#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/wrench/1-setup.sh
    source /mnt/root/wrench/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/wrench/2-user.sh
    arch-chroot /mnt /root/wrench/3-post-setup.sh