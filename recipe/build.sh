#!/bin/bash
set -ex

mkdir -p out/release
cd out/release
cmake \
  -GNinja \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DDOCTEST_WITH_TESTS=OFF \
  -DDOCTEST_WITH_MAIN_IN_STATIC_LIB=OFF \
  ../..

ninja install
