#!/bin/bash

cd /sources
tar -xvf diffutils-3.10.tar.xz
cd diffutils-3.10
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv diffutils-3.10
