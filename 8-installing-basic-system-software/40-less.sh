#!/bin/bash

pkgname=less
pkgver=661

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr --sysconfdir=/etc
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
