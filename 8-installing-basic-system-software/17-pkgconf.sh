#!/bin/bash

pkgname=pkgconf
pkgver=2.3.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr              \
            --disable-static           \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
make install
ln -sv pkgconf   /usr/bin/pkg-config
ln -sv pkgconf.1 /usr/share/man/man1/pkg-config.1
cd ..
rm -rv $pkgname-$pkgver
