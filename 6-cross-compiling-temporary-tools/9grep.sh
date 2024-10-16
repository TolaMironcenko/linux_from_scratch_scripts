#!/bin/bash

cd $LFS/sources
tar -xvf #grep
cd #grep
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #grep
