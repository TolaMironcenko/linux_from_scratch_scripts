#!/bin/bash

cd /sources
tar -xvf #jinja
cd #jinja
pip3 wheel -w dist --no-cache-dir --no-build-isolation --no-deps $PWD
pip3 install --no-index --no-user --find-links dist Jinja2
cd ..
rm -rv #jinja
