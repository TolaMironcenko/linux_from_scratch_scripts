#!/bin/bash

pkgname=libxcvt
pkgver=0.1.2

cd /sources
# wget https://www.x.org/pub/individual/lib/libxcvt-0.1.2.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
mkdir build &&
cd    build &&

meson setup --prefix=$XORG_PREFIX --buildtype=release .. &&
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
