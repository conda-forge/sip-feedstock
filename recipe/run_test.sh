#!/bin/bash

# This block is taken from the PyQt recipe
if [[ ${c_compiler} != "toolchain_c" ]]; then
    if [[ ${HOST} =~ .*linux.* ]]; then
        mkdir bin || true
        pushd bin
            ln -s ${GXX} g++ || true
            ln -s ${GCC} gcc || true
        popd
        export PATH=${PWD}/bin:${PATH}
    fi
fi

export LINK=${CC}
cd test
sip -c . -b word.sbf word.sip
python configure.py
make
