#!/bin/bash

pkgname=zstd
pkgver=1.5.6

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
make prefix=/usr $MAKEFLAGS
# make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ..
rm -rv $pkgname-$pkgver
