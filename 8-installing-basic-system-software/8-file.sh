#!/bin/bash

cd /sources
tar -xvf file-5.45.tar.gz
cd file-5.45
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv file-5.45
