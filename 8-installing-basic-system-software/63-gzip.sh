#!/bin/bash

cd /sources
tar -xvf gzip-1.13.tar.xz
cd gzip-1.13
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv gzip-1.13
