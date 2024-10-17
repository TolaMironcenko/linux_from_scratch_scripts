#!/bin/bash

pkgname=sed
pkgver=4.9

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
make html $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
install -d -m755           /usr/share/doc/$pkgname-$pkgver
install -m644 doc/sed.html /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
