#!/bin/bash

pkgname=xcv-util
pkgver=0.4.1

cd /sources
# wget https://xcb.freedesktop.org/dist/xcb-util-0.4.1.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
