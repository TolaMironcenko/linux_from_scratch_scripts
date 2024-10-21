#!/bin/bash

pkgname=mesa
pkgver=24.1.5

cd /sources
# wget https://mesa.freedesktop.org/archive/mesa-24.1.5.tar.xz
# wget https://www.linuxfromscratch.org/patches/blfs/12.2/mesa-add_xdemos-2.patch
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
patch -Np1 -i ../mesa-add_xdemos-2.patch
mkdir build &&
cd    build &&

# meson setup ..                 \
#       --prefix=$XORG_PREFIX    \
#       --buildtype=release      \
#       -D platforms=x11,wayland \
#       -D gallium-drivers=auto  \
#       -D vulkan-drivers=auto   \
#       -D valgrind=disabled     \
#       -D libunwind=disabled    &&

meson setup .. \
    --prefix=$XORG_PREFIX \
    --buildtype=release \
    -D platforms=x11 \
    -D gallium-drivers='svga' \
    -D vulkan-drivers='' \
    -D valgrind=disabled \
    -D libunwind=disabled \

ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
