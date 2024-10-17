#!/bin/bash

cd /sources
tar -xvf zlib-1.3.1.tar.gz
cd zlib-1.3.1
./configure --prefix=/usr
make $MAKEFLAGS
#make check
make install
rm -fv /usr/lib/libz.a
cd ..
rm -rv zlib-1.3.1
