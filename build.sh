#!/bin/bash

set -ex

${CARMA_OPT_DIR}/scripts/build_script.sh -p $@ -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
