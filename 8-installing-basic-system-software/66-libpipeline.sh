#!/bin/bash

pkgname=libpipeline
pkgver=1.5.7

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv $pkgname-$pkgver
