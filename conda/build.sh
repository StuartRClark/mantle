#!/bin/bash

if [[ $(uname) == Linux ]]; then
    export LDFLAGS="$LDFLAGS -Wl,-rpath-link,$PREFIX/lib"
fi



# test
python -m pip install -vvv --no-deps --ignore-installed --prefix=$PREFIX .
#cd underworld/libUnderworld
#export PETSC_DIR=$PREFIX
#./configure.py --prefix=$PREFIX/lib/python*/site-packages/ || (cat config.log && ls /lib exit 1)
#./compile.py
#./scons.py install 
