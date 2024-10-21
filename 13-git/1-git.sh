#!/bin/bash

pkgname=git
pkgver=2.46.0

cd /sources
# wget https://www.kernel.org/pub/software/scm/git/git-2.46.0.tar.xz
tar -xvf $pkgname-$pkgver.tar.xz
cd $pkgname-$pkgver
./configure --prefix=/usr \
            --with-gitconfig=/etc/gitconfig \
            --with-python=python3 &&
make $MAKEFLAGS
sudo make perllibdir=/usr/lib/perl5/5.40/site_perl install
cd ..
rm -rv $pkgname-$pkgver
