#!/bin/bash

pkgname=imlib2
pkgver=1.12.3

cd /sources
# wget https://downloads.sourceforge.net/enlightenment/imlib2-1.12.3.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr --disable-static &&
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
