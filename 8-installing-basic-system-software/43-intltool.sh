#!/bin/bash

pkgname=intltool
pkgver=0.51.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
sed -i 's:\\\${:\\\$\\{:' intltool-update.in
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
install -v -Dm644 doc/I18N-HOWTO /usr/share/doc/$pkgname-$pkgver/I18N-HOWTO
cd ..
rm -rv $pkgname-$pkgver
