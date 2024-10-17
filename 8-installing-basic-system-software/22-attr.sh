#!/bin/bash

pkgname=attr
pkgver=2.5.2

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr     \
            --disable-static  \
            --sysconfdir=/etc \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
