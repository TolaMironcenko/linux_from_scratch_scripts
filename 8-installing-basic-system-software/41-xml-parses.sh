#!/bin/bash

cd /sources
tar -xvf #xml-parser
cd #xml-parses
perl Makefile.PL
make $MAKEFLAGS
# make test
make install
cd ..
rm -rv #xml-parser
