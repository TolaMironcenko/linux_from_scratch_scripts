#!/bin/bash

pkgname=mpc
pkgver=1.3.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr    \
            --disable-static \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
make html $MAKEFLAGS
# make check
make install
make install-html
cd ..
rm -rv $pkgname-$pkgver
