#!/bin/bash

cd /sources
tar -xvf iana-etc-20240806.tar.gz
cd iana-etc-20240806
cp -v services protocols /etc
cd ..
rm -rv iana-etc-20240806
