#!/bin/bash

pkgname=gperf
pkgver=3.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
# make -j1 check
make install
cd ..
rm -rv $pkgname-$pkgver
