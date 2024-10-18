#!/bin/bash

pkgname=libtasn1
pkgver=4.19.0

cd /sources
# wget https://ftp.gnu.org/gnu/libtasn1/libtasn1-4.19.0.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr --disable-static &&
make $MAKEFLAGS
make install
cd ..
rm -rv $pkgname-$pkgver
