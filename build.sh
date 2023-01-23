#!/bin/bash

set -ex

# check to see if we need to use a toolchain for this build
if [ ! -z "${BUILD_ARCHITECTURE}" ]; then
    TOOLCHAIN_ARG="-DCMAKE_TOOLCHAIN_FILE=/usr/share/cmake_${BUILD_ARCHITECTURE}.toolchain.ubuntu"
fi

BUILD_DIR=build${BUILD_ARCHITECTURE}

cmake -B${BUILD_DIR} ${TOOLCHAIN_ARG}
cd ${BUILD_DIR}
make
