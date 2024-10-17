#!/bin/bash

pkgname=tar
pkgver=1.35

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
make -C doc install-html docdir=/usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
