#1/bin/bash

cd /sources
tar -xvf setuptools-72.2.0.tar.gz
cd setuptools-72.2.0
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools
cd ..
rm -rv setuptools-72.2.0
