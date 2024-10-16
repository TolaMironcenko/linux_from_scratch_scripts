#!/bin/bash

cd $LFS/sources
tar -xvf #sed
cd #sed
./configure --prefix=/usr   \
            --host=$LFS_TGT \
            --build=$(./build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #sed
