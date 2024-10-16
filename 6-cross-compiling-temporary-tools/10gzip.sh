#!/bin/bash

cd $LFS/sources
tar -xvf #gzip
cd #gzip
./configure --prefix=/usr --host=$LFS_TGT
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv #gzip
