#!/bin/bash

cd /sources
tar -xvf m4-1.4.19.tar.xz
cd m4-1.4.19
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv m4-1.4.19
