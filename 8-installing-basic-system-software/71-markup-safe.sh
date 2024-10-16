#!/bin/bash

cd /sources
tar -xvf #markup-safe
cd #markup-safe
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Markupsafe
cd ..
rm -rv #markup-safe
