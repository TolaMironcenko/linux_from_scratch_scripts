#!/bin/bash

cd /sources
tar -xvf man-pages-6.9.1.tar.xz
cd man-pages-6.9.1
rm -v man3/crypt*
make prefix=/usr install
cd ..
rm -rv man-pages-6.9.1
