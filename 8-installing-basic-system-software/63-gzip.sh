#!/bin/bash

pkgname=gzip
pkgver=1.13

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
