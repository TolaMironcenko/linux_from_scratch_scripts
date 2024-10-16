#!/bin/bash

cd /sources
tar -xvf #diffutils
cd #diffutils
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #diffutils
