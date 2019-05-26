#!/bin/bash

export LINK=${CC}
${PYTHON} configure.py --sysroot=${PREFIX}

make
make install
