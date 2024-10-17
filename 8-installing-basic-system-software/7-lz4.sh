#!/bin/bash

cd /sources
tar -xvf lz4-1.10.0.tar.gz
cd lz4-1.10.0
make BUILD_STATIC=no PREFIX=/usr $MAKEFLAGS
# make -j1 check
make BUILD_STATIC=no PREFIX=/usr install
cd ..
rm -rv lz4-1.10.0
