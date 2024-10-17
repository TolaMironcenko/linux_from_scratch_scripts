#!/bin/bash

grub-install $disk
cat > /boot/grub/grub.cfg << "EOF"
# Begin /boot/grub/grub.cfg
set default=0
set timeout=5

insmod part_gpt
insmod ext2
set root=(hd0,2)

menuentry "GNU/Linux, Linux 6.10.5-lfs-12.2-systemd" {
        linux   /boot/vmlinuz-6.10.5-lfs-12.2-systemd root=/dev/sda2 ro
}
EOF
