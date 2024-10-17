#!/bin/bash

pkgname=flit_core
pkgver=3.9.0

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist flit_core
cd ..
rm -rv $pkgname-$pkgver
