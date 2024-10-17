#!/bin/bash

pkgname=mpfr
pkgver=4.2.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr        \
            --disable-static     \
            --enable-thread-safe \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
make html $MAKEFLAGS
# make check
make install
make install-html
cd ..
rm -rv $pkgname-$pkgver
