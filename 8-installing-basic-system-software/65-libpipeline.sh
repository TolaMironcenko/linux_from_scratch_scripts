#!/bin/bash

cd /sources
tar -xvf #libpipeline
cd #libpipeline
./configure --prefix=/usr
make $MAKEFLAGS
# make check
make install
cd ..
rm -rv #libpipeline
