#!/bin/bash

pkgname=bison
pkgver=3.8.2

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
