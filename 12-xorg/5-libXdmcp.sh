#!/bin/bash

pkgname=libXdmcp
pkgver=1.1.5

cd /sources
# wget https://www.x.org/pub/individual/lib/libXdmcp-1.1.5.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG --docdir=/usr/share/doc/libXdmcp-1.1.5 &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
