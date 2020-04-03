#!/bin/bash
echo Deploy $1
cd `dirname $0`
BUILD_DIR=build/$1
rm -rf $BUILD_DIR
rm -rf $BUILD_DIR/$1.zip

mkdir $BUILD_DIR
cp functions/$1/dist/**.js $BUILD_DIR/
mkdir -p $BUILD_DIR/shared
cp shared/dist/**.js $BUILD_DIR/shared/

cd build/$1
zip -r ../$1.zip ./
