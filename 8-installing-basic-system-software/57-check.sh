#!/bin/bash

pkgname=check
pkgver=0.15.2

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr --disable-static
make $MAKEFLAGS
# make check
make docdir=/usr/share/doc/$pkgname-$pkgver install
cd ..
rm -rv $pkgname-$pkgver
