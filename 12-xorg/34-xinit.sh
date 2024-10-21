#!/bin/bash

pkgname=xinit
pkgver=1.4.2

# wget https://www.x.org/pub/individual/app/xinit-1.4.2.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG --with-xinitdir=/etc/X11/app-defaults &&
make $MAKEFLAGS
sudo make install
ldconfig
cd ..
rm -rv $pkgname-$pkgver
