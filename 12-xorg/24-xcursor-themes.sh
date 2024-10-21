#!/bin/bash

pkgname=xcursor-themes
pkgver=1.0.7

cd /sources
# wget https://www.x.org/pub/individual/data/xcursor-themes-1.0.7.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
