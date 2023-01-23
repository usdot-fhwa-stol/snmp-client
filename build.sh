#!/bin/bash

set -ex

# check to see if we need to use a toolchain for this build
if [ ! -z "${BUILD_ARCHITECTURE}" ]; then
    TOOLCHAIN_ARG="-DCMAKE_TOOLCHAIN_FILE=${CARMA_OPT_DIR}/cmake/cmake_${BUILD_ARCHITECTURE}.toolchain.ubuntu"
fi

BUILD_DIR=build${BUILD_ARCHITECTURE}
BUILD_TYPE=Release

cmake -B${BUILD_DIR} ${TOOLCHAIN_ARG} -DCMAKE_BUILD_TYPE="${BUILD_TYPE}"
cd ${BUILD_DIR}
make
cpack -G DEB