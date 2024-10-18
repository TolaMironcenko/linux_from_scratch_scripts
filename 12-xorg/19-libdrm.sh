#!/bin/bash

pkgname=libdrm
pkgver=2.4.122

cd /sources
# wget https://dri.freedesktop.org/libdrm/libdrm-2.4.122.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX \
            --buildtype=release   \
            -D udev=true          \
            -D valgrind=disabled  \
            ..                    &&
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
