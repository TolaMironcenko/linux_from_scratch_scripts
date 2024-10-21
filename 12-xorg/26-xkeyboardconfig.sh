#!/bin/bash

pkgname=xkeyboard-config
pkgver=2.42

cd /sources
# wget https://www.x.org/pub/individual/data/xkeyboard-config/xkeyboard-config-2.42.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
mkdir build
cd build
meson setup --prefix=$XORG_PREFIX --buildtype=release ..
ninja
sudo ninja install
cd ../../
rm -rv $pkgname-$pkgver
