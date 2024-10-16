#!/bin/bash

cd /sources
tar -xvf #iana-etc
cd #iana-etc
cp -v services protocols /etc
cd ..
rm -rv #iana-etc
