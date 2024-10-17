#!/bin/bash

pkgname=man-db
pkgver=2.12.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr                         \
            --docdir=/usr/share/doc/$pkgname-$pkgver \
            --sysconfdir=/etc                     \
            --disable-setuid                      \
            --enable-cache-owner=bin              \
            --with-browser=/usr/bin/lynx          \
            --with-vgrind=/usr/bin/vgrind         \
            --with-grap=/usr/bin/grap
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
