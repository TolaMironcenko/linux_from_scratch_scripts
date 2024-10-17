#!/bin/bash

pkgname=lz4
pkgver=1.10.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
make BUILD_STATIC=no PREFIX=/usr $MAKEFLAGS
# make -j1 check
make BUILD_STATIC=no PREFIX=/usr install
cd ..
rm -rv $pkgname-$pkgver
