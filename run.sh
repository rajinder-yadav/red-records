#!/usr/bin/env bash
if [ "$1" == "build" ]; then
./build.sh
fi
pushd build/bootstrap-server/
node main.js
