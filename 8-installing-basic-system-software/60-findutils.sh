#!/bin/bash

pkgname=findutils
pkgver=4.10.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr --localstatedir=/var/lib/locate
make $MAKEFLAGS
# chown -R tester .
# su tester -c "PATH=$PATH make check"
make install
cd ..
rm -rv $pkgname-$pkgver
