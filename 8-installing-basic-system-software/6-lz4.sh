#!/bin/bash

cd /sources
tar -xvf #lz4
cd #lz4
make BUILD_STATIC=no PREFIX=/usr $MAKEFLAGS
# make -j1 check
make BUILD_STATIC=no PREFIX=/usr install
cd ..
rm -rv #lz4
