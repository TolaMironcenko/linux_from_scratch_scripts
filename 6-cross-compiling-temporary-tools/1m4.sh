#!/bin/bash

cd $LFS/sources
tar -xvf #m4
cd #m4
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #m4
