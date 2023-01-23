#!/bin/bash

set -ex

if [ ! -z "${BUILD_ARCHITECTURE}" ]; then
    PACKAGE_ARCHITECTURE=":${BUILD_ARCHITECTURE}"
fi

apt-get install -y libspdlog-dev${PACKAGE_ARCHITECTURE} libsnmp-dev${PACKAGE_ARCHITECTURE}
