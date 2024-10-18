#!/bin/bash

pkgname=make-ca
pkgver=1.14

cd /sources
# wget https://github.com/lfs-book/make-ca/archive/v1.14/make-ca-1.14.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
make install &&
install -vdm755 /etc/ssl/local
/usr/sbin/make-ca -g
systemctl enable update-pki.timer
cd ..
rm -rv $pkgname-$pkgver
