#!/bin/bash

cd /sources
tar -xvf #man-pages
cd #man-pages
rm -v man3/crypt*
make prefix=/usr install
cd ..
rm -rv #man-pages
