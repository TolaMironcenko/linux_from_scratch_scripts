#!/bin/bash

pkgname=Mako
pkgver=1.3.5

cd /sources
# wget https://files.pythonhosted.org/packages/source/M/Mako/Mako-1.3.5.tar.gz
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
pip3 wheel -w dist --no-build-isolation --no-deps --no-cache-dir $PWD
sudo pip3 install --no-index --find-links=dist --no-cache-dir --no-user Mako
cd ..
rm -rv $pkgname-$pkgver
