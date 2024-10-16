#!/bin/bash

cd /sources
tar -xvf #python
cd #python
./configure --prefix=/usr   \
            --enable-shared \
            --without-ensurepip
make $MAKEFLAGS
make install
cd ..
rm -rv #python
