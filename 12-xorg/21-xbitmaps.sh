#!/bin/bash

pkgname=xbitmaps
pkgver=1.1.3

cd /sources
# wget https://www.x.org/pub/individual/data/xbitmaps-1.1.3.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure $XORG_CONFIG
sudo make install
cd ..
rm -rv $pkgname-$pkgver
