#!/bin/bash

cd /sources
tar -xvf #zlib
cd #zlib
./configure --prefix=/usr
make $MAKEFLAGS
#make check
make install
rm -fv /usr/lib/libz.a
cd ..
rm -rv #zlib
