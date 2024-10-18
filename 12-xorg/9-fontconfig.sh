#!/bin/bash

pkgname=fontconfig
pkgver=2.15.0

cd /sources
# wget https://www.freedesktop.org/software/fontconfig/release/fontconfig-2.15.0.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr        \
            --sysconfdir=/etc    \
            --localstatedir=/var \
            --disable-docs       \
            --docdir=/usr/share/doc/fontconfig-2.15.0
make $MAKEFLAGS
sudo make install
cd ..
rm -rv $pkgname-$pkgver
