#!/bin/bash

pkgname=xcb-util-renderutil
pkgver=0.3.10

cd /sources
# wget https://xcb.freedesktop.org/dist/xcb-util-renderutil-0.3.10.tar.xz
tar -xvf $pkgname-$pkgver
cd $pkgname-$pkgver
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
