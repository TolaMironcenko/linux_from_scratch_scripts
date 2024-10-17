#!/bin/bash

pkgname=libcap
pkgver=2.70

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib $MAKEFLAGS
# make test
make prefix=/usr lib=lib install
cd ..
rm -rv $pkgname-$pkgver
