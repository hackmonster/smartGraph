#!/bin/bash
@Echo off
mkdir -p build
pushd build
if [ "$1" == "-B" ];
then
cmake ..
make -j4 -B
else
make -j4
fi
./testGraph
popd

