#!/bin/bash

cd $LFS/sources
tar -xvf gzip-1.13.tar.xz
cd gzip-1.13
./configure --prefix=/usr --host=$LFS_TGT
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv gzip-1.13
