#1/bin/bash

cd /sources
tar -xvf #setuptools
cd #setuptools
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --find-links dist setuptools
cd ..
rm -rv #setuptools
