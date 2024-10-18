#!/bin/bash

pkgname=util-macros
pkgver=1.20.1

cd /sources
# wget https://www.x.org/pub/individual/util/util-macros-1.20.1.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG
sudo make install
cd ..
rm -rv $pkgname-$pkgver
