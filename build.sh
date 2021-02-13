#!/usr/bin/env bash

# exit when any command fails
set -e

# Clean up build folder
echo ">> Cleaning build folder"
rm -rf build
mkdir -p build/mfeapp

# Build Bootstrap packages using Parcel
echo ">> Building Bootstrap packages"
npm run build

# Build server
echo ">> Building NestJS server"
pushd bootstrap-server
npm run build
cp package.json package-lock.json ../build/bootstrap-server/
popd

# Install NPM modules
echo ">> Installing NestJS NPM modules"
pushd build/bootstrap-server/
npm install
popd

# Build Vue 3 app
echo ">> Building Vue3 app"
pushd welcome
npm run build
popd

# Build React app
echo ">> Building React app"
pushd music
npm run build
popd

echo ">> ==========================="
echo ">> Project Successfully Build!"
echo ">> ==========================="
