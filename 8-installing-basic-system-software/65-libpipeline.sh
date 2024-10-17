#!/bin/bash

cd /sources
tar -xvf libpipeline-1.5.7.tar.gz
cd libpipeline-1.5.7
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv libpipeline-1.5.7
