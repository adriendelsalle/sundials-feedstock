#!/bin/sh

cmake -DCMAKE_PREFIX_PATH=${PREFIX} -DCMAKE_INSTALL_RPATH="${PREFIX}/lib" -DCMAKE_BUILD_WITH_INSTALL_RPATH=ON -DCMAKE_MACOSX_RPATH=ON .
make
ctest --output-on-failure
