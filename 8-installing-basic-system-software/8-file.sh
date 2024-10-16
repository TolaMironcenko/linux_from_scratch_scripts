#!/bin/bash

cd /sources
tar -xvf #file
cd #file
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #file
