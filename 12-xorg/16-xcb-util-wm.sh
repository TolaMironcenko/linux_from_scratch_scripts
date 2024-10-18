#!/bin/bash

pkgname=xcb-util-wm
pkgver=0.4.2

cd /sources
# wget https://xcb.freedesktop.org/dist/xcb-util-wm-0.4.2.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
