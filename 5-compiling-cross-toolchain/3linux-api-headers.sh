#!/bin/bash

cd $LFS/sources
tar -xvf #linux
cd #linux
make mrproper
make headers
find usr/include -type f ! -name '*.h' -delete
cp -rv usr/include $LFS/usr
cd ..
rm -rv #linux
