#!/bin/bash

cd $LFS/sources
tar -xvf linux-6.10.5.tar.xz
cd linux-6.10.5
make mrproper
make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
cd ..
rm -rv linux-6.10.5
