#!/bin/bash

pkgname=openssl
pkgver=3.3.1

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
./config --prefix=/usr         \
         --openssldir=/etc/ssl \
         --libdir=lib          \
         shared                \
         zlib-dynamic
make $MAKEFLAGS
# HARNESS_JOBS=$(nproc) make test
sed -i '/INSTALL_LIBS/s/libcrypto.a libssl.a//' Makefile
make MANSUFFIX=ssl install
mv -v /usr/share/doc/openssl /usr/share/doc/$pkgname-$pkgver
cp -vfr doc/* /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
