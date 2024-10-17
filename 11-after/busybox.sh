#!/bin/bash

pkgname=busybox
pkgver=1.36.1

cd /sources
# wget busybox
tar -xvf $pkgname-$pkgver.tar.bz2
cp -v $OLDPWD/busybox-lfs-defconfig $pkgname-$pkgver/.config
cd $pkgname-$pkgver
make oldconfig
make $MAKEFLAGS
cp -v busybox /usr/bin
cd ..
rm -rv $pkgname-$pkgver
