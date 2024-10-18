#!/bin/bash

pkgname=xcb-util-cursor
pkgver=0.1.4

cd /sources
# wget https://xcb.freedesktop.org/dist/xcb-util-cursor-0.1.4.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
