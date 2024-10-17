#!/bin/bash

pkgname=gdbm
pkgver=1.24

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr    \
            --disable-static \
            --enable-libgdbm-compat
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
