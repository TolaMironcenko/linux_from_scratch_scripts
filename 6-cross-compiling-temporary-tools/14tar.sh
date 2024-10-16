#!/bin/bash

cd $LFS/sources
tar -xvf #tar
cd #tar
./configure --prefix=/usr                     \
            --host=$LFS_TGT                   \
            --build=$(build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #tar
