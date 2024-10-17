#!/bin/bash

pkgname=automake
pkgver=1.17

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make -j$(($(nproc)>4?$(nproc):4)) check
make install
cd ..
rm -rv $pkgname-$pkgver
