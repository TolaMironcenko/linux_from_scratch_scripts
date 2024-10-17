#!/bin/bash

pkgname=gettext
pkgver=0.22.5

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make check
make install
chmod -v 0755 /usr/lib/preloadable_libintl.so
cd ..
rm -rv $pkgname-$pkgver
