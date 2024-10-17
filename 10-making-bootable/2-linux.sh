#!/bin/bash

cd /sources
tar -xvf #linux
cd #linux
make mrproper
# make menuconfig
# cp lfs-defconfig .config
# make oldconfig
make $MAKEFLAGS
make modules_install
cp -iv arch/x86/boot/bzImage /boot/vmlinuz-6.10.5-lfs-12.2-systemd
cp -iv System.map /boot/System.map-6.10.5
cp -iv .config /boot/config-6.10.5
cp -r Documentation -T /usr/share/doc/linux-6.10.5

install -v -m755 -d /etc/modprobe.d
cat > /etc/modprobe.d/usb.conf << "EOF"
# Begin /etc/modprobe.d/usb.conf

install ohci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i ohci_hcd ; true
install uhci_hcd /sbin/modprobe ehci_hcd ; /sbin/modprobe -i uhci_hcd ; true

# End /etc/modprobe.d/usb.conf
EOF
