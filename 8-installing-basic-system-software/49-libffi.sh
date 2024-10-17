#!/bin/bash

pkgname=libffi
pkgver=3.4.6

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr          \
            --disable-static       \
            --with-gcc-arch=native
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
