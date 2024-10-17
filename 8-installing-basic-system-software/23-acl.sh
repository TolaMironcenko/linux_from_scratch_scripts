#!/bin/bash

pkgname=acl
pkgver=2.3.2

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
make install
cd ..
rm -rv $pkgname-$pkgver
