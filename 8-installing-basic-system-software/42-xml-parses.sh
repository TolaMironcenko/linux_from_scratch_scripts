#!/bin/bash

pkgname=XML-Parser
pkgver=2.47

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
perl Makefile.PL
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv $pkgname-$pkgver
