#!/bin/bash

pkgname=xorgproto
pkgver=2024.1

cd /sources
# wget https://xorg.freedesktop.org/archive/individual/proto/xorgproto-2024.1.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX .. &&
ninja
sudo ninja install
mv -v $XORG_PREFIX/share/doc/xorgproto{,-2024.1}
cd ../../
rm -rv $pkgname-$pkgver
