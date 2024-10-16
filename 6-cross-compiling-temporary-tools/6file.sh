#!/bin/bash

cd $LFS/sources
tar -xvf #file
cd #file
mkdir build
pushd build
  ../configure --disable-bzlib      \
               --disable-libseccomp \
               --disable-xzlib      \
               --disable-zlib
  make
popd
./configure --prefix=/usr --host=$LFS_TGT --build=$(./config.guess)
make FILE_COMPILE=$(pwd)/build/src/file $MAKEFLAGS
make DESTDIR=$LFS install
rm -v $LFS/usr/lib/libmagic.la
cd ..
rm -rv #file
