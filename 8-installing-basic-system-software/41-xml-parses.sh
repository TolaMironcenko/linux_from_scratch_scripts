#!/bin/bash

cd /sources
tar -xvf XML-Parser-2.47.tar.gz
cd XML-Parser-2.47
perl Makefile.PL
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv XML-Parser-2.47
