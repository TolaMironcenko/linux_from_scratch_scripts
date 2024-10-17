#!/bin/bash

pkgname=grep
pkgver=3.11

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -i "s/echo/#echo/" src/egrep.sh
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
