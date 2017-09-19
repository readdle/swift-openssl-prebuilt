#!/bin/bash

build_dir=$(realpath $(dirname $0))
base_dir=$(realpath $(dirname $build_dir))

version=3
name=openssl-android

full_name=$name-$version

pushd "$build_dir"
    curl -f -O http://d.etpan.org/mailcore2-deps/$name/$full_name.zip
    unzip $full_name.zip

    mkdir -p $base_dir/include
    mkdir -p $base_dir/libs

    cp -r $full_name/include/* $base_dir/include/
    cp -r $full_name/libs/armeabi-v7a $base_dir/libs/

    rm -rf $full_name*
popd
