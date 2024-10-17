#!/bin/bash

pkgname=wheel
pkgver=0.44.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links=dist wheel
cd ..
rm -rv $pkgname-$pkgver
