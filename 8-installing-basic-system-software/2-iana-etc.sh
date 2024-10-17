#!/bin/bash

pkgname=iana-etc
pkgver=20240806

cd /sources
tar -xvf $pkgname-$pkgver.tar.gz
cd $pkgname-$pkgver
cp -v services protocols /etc
cd ..
rm -rv $pkgname-$pkgver
