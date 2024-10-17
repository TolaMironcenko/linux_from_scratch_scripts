#!/bin/bash

cd /sources
tar -xvf patch-2.7.6.tar.xz
cd patch-2.7.6
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv patch-2.7.6
