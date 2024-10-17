#1/bin/bash

pkgname=setuptools
pkgver=72.2.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools
cd ..
rm -rv $pkgname-$pkgver
