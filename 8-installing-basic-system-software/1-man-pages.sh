#!/bin/bash

pkgname=man-pages
pkgver=6.9.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
rm -v man3/crypt*
make prefix=/usr install
cd ..
rm -rv $pkgname-$pkgver
