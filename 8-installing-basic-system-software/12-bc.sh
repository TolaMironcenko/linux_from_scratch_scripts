#!/bin/bash

pkgname=bc
pkgver=6.7.6

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
CC=gcc ./configure --prefix=/usr -G -O3 -r
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv $pkgname-$pkgver
