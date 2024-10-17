#!/bin/bash

pkgname=gmp
pkgver=6.3.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr    \
            --enable-cxx     \
            --disable-static \
            --docdir=/usr/share/doc/$pkgname-$pkgver
make $MAKEFLAGS
make html $MAKEFLAGS
# make check 2>&1 | tee gmp-check-log
# awk '/# PASS:/{total+=$3} ; END{print total}' gmp-check-log
make install
make install-html
cd ..
rm -rv $pkgname-$pkgver
