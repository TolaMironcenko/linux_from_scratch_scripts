#!/bin/bash

pkgname=zlib
pkgver=1.3.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
#make check
make install
rm -fv /usr/lib/libz.a
cd ..
rm -rv $pkgname-$pkgver
