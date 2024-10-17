#!/bin/bash

cd /sources
tar -xvf texinfo-7.1.tar.xz
cd texinfo-7.1
./configure --prefix=/usr
make $MAKEFLAGS
make install
cd ..
rm -rv texinfo-7.1
