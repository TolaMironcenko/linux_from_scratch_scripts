#!/bin/bash

pkgname=iproute2
pkgver=6.10.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
sed -i /ARPD/d Makefile
rm -fv man/man8/arpd.8
make NETNS_RUN_DIR=/run/netns $MAKEFLAGS
make SBINDIR=/usr/sbin install
mkdir -pv             /usr/share/doc/$pkgname-$pkgver
cp -v COPYING README* /usr/share/doc/$pkgname-$pkgver
cd ..
rm -rv $pkgname-$pkgver
