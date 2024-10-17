#!/bin/bash

cd /sources
tar -xvf Python-3.12.5.tar.xz
cd Python-3.12.5
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make $MAKEFLAGS
make install
cd ..
rm -rv Python-3.12.5
