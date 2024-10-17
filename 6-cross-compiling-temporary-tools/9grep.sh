#!/bin/bash

cd $LFS/sources
tar -xvf grep-3.11.tar.xz
cd grep-3.11
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv grep-3.11
