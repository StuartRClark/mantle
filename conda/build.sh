#!/bin/bash

cd underworld/libUnderworld
export PETSC_DIR=$PREFIX
./configure.py --prefix=$PREFIX/lib/python*/site-packages/ || (cat config.log && ls /lib exit 1)
./compile.py
./scons.py install 
