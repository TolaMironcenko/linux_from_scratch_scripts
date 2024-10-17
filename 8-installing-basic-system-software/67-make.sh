#!/bin/bash

pkgname=make
pkgver=4.4.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv $pkgname-$pkgver
