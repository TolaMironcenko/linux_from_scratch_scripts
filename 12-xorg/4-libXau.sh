#!/bin/bash

pkgname=libXau
pkgver=1.0.11

cd /sources
# wget https://www.x.org/pub/individual/lib/libXau-1.0.11.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
