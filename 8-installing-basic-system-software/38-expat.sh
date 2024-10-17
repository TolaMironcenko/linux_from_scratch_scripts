#!/bin/bash

pkgname=expat
pkgver=2.6.2

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make check
make install
install -v -m644 doc/*.{html,css} /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
