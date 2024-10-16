#!/bin/bash

cd /sources
tar -xvf #gzip
cd #gzip
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #gzip
