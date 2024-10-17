#!/bin/bash

cd $LFS/sources
tar -xvf make-4.4.1.tar.gz
cd make-4.4.1
./configure --prefix=/usr   \
            --without-guile \
            --host=$LFS_TGT \
            --build=$(build-aux/config.guess)
make $MAKEFLAGS
make DESTDIR=$LFS install
cd ..
rm -rv make-4.4.1
