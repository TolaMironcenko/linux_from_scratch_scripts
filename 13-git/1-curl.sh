#!/bin/bash

pkgname=curl
pkgver=8.9.1

cd /sources
# wget https://curl.se/download/curl-8.9.1.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr                           \
            --disable-static                        \
            --with-openssl                          \
            --enable-threaded-resolver              \
            --with-ca-path=/etc/ssl/certs &&
make $MAKEFLAGS
sudo make install
cd ../
rm -rv $pkgname-$pkgver
